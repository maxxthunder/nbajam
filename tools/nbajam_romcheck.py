"""Check nbajam_password.py against the game's own password code, run in Mesen 2.

Usage: python tools/nbajam_romcheck.py <Mesen.exe> <rom.sfc> [cases]
Boots the ROM headless (--testrunner), enters initials AAA and saves state on the password
screen. For each case it reloads that state, writes the initials into the player's record and
13 password characters into the entry buffer, then presses A to type the 14th, so the game
decodes it ($8ADB17) and, if valid, re-encodes the record for the stats screen ($8AD8F0).
Fails if the game's valid/invalid, wins, losses, streak, teams or re-encoded password differ
from decode() and encode(). Mesen's runner stops after a while, so long runs check fewer cases.
"""
import os
import random
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import nbajam_password as P  # noqa: E402

LUA = r'''
local W = emu.memType.snesWorkRam
local function rd(a) return emu.read(a, W) end
local function w8(a, v) emu.write(a, v, W) end
local PW, INI = "%s", "%s"
local q, pend, state = {}, nil, nil
local function wait(n) for i = 1, n do q[#q + 1] = {} end end
local function press(b) for i = 1, 4 do q[#q + 1] = b end wait(6) end
local function at(fn) q[#q + 1] = fn end
local function atframe(fn) at(function() pend = fn end) end   -- savestates only work in an exec callback
local NMI = emu.read(0xFFEA, emu.memType.snesMemory) + emu.read(0xFFEB, emu.memType.snesMemory) * 256
emu.addMemoryCallback(function()
  if pend then local f = pend; pend = nil; local ok, e = pcall(f); if not ok then print("ERR " .. tostring(e)) end end
end, emu.callbackType.exec, NMI, NMI, emu.cpuType.snes, emu.memType.snesMemory)
emu.addEventCallback(function()
  local s = table.remove(q, 1)
  if s == nil then emu.stop(0) return end
  if type(s) == "function" then s() s = {} end
  emu.setInput(s, 0)
end, emu.eventType.inputPolled)

-- title, Start, YES to initials, A A A (cursor rests on A), A again for the password screen
wait(1900) press({start = true}) wait(60) press({start = true}) wait(90)
press({a = true}) wait(90)
press({a = true}) wait(20) press({a = true}) wait(20) press({a = true}) wait(60) press({a = true}) wait(60)
atframe(function() state = emu.createSavestate() end)
for _, cs in ipairs(CASES) do
  atframe(function()
    emu.loadSavestate(state)
    local ini, pw = cs[1], cs[2]
    local r = rd(0x1724) + rd(0x1725) * 256
    for i = 1, 3 do w8(0x172E + r + i - 1, INI:find(ini:sub(i, i), 1, true) - 1) end
    for i = 0, 12 do
      local v = PW:find(pw:sub(i + 1, i + 1), 1, true) - 1
      w8((i %% 2 == 0 and 0x16ED or 0x16EC) + 8 * (i // 2), v)
    end
    w8(0x16E4, 49) w8(0x16E5, 0)                                  -- 13 characters entered
    w8(0x16C4, PW:find(pw:sub(14, 14), 1, true) - 1) w8(0x16C5, 0)  -- cursor on the 14th
  end)
  press({a = true}) wait(90)
  at(function()
    local r = rd(0x1724) + rd(0x1725) * 256
    local s = ""
    for i = 0, 13 do
      local v = rd((i %% 2 == 0 and 0x16ED or 0x16EC) + 8 * (i // 2))
      s = s .. (PW:sub(v + 1, v + 1))
    end
    print(string.format("RES %%s %%s %%d %%d %%d %%d %%02X%%02X%%02X%%02X %%s", cs[1], cs[2], rd(0x16BC) == 5 and 1 or 0,
      rd(0x188E + r), rd(0x188F + r), rd(0x1890 + r), rd(0x19EE + r), rd(0x19EF + r), rd(0x19F0 + r), rd(0x19F1 + r), s))
  end)
end
'''


def main(mesen, rom, n=150):
    rnd = random.Random(1)
    cases = [(ini, pw) for ini, pw in P.KNOWN]
    while len(cases) < n:
        ini = "".join(rnd.choice(P.LETTERS[:26]) for _ in range(3))
        if rnd.random() < 0.5:
            f = {"wins": rnd.randrange(256), "losses": rnd.randrange(256), "streak": rnd.randrange(256),
                 "teams": rnd.randrange(P.ALL_TEAMS + 1)}
            cases.append((ini, P.encode(ini, f)))
        else:
            cases.append((ini, "".join(rnd.choice(P.ALPHABET) for _ in range(14))))
    lua = "CASES={" + ",".join('{"%s","%s"}' % c for c in cases) + "}\n" + LUA % (P.ALPHABET, P.LETTERS)
    with tempfile.TemporaryDirectory() as tmp:
        script = os.path.join(tmp, "check.lua")
        open(script, "w").write(lua)
        out = subprocess.run([mesen, "--testrunner", rom, script], capture_output=True, text=True, timeout=900).stdout
    ran = bad = valid = 0
    for line in out.splitlines():
        if line.startswith("ERR"):
            print(line)
            bad += 1
        if not line.startswith("RES "):
            continue
        _, ini, pw, ok, w, l, s, teams, shown = line.split()
        game = {"wins": int(w), "losses": int(l), "streak": int(s), "teams": int(teams, 16) >> 5} if ok == "1" else None
        try:
            py = P.decode(ini, pw)
        except ValueError:
            py = None
        ran += 1
        valid += py is not None
        if game != py or (py and P.encode(ini, py) != shown):
            bad += 1
            print("MISMATCH", ini, pw, "game:", game, shown, "py:", py)
    print(f"{ran} of {len(cases)} cases ran ({valid} valid), {bad} mismatches")
    return 1 if bad or not ran else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1], sys.argv[2], *map(int, sys.argv[3:4])))
