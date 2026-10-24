-- NBA Hangtime / Maximum Hangtime (arcade): every name/PIN entry. Reads the table from ROM, writes each entry's ten
-- words into the player's entry when the check (FFAB8C70h) reads the table, then shoots team select and tip-off.
-- python tools/emu/mame.py nbahangt tools/tests/hangtime_names.lua roms   (TABLE=FFAAF360 for nbamht)
-- Needs set-up NVRAM: on fresh NVRAM the board stops on its CMOS screen, so do one plain run first.
local TABLE=tonumber(os.getenv("TABLE") or "FFAB9200",16)
local cpu=manager.machine.devices[":maincpu"]
local E={}
local a=TABLE
while true do
  local w={} for i=0,9 do w[i+1]=mem:read_u16(a+0x10*i) end
  local ok=w[1]>0 for i=1,6 do if w[i]>29 then ok=false end end for i=7,10 do if w[i]>11 then ok=false end end
  if not ok then break end
  local n="" for i=1,6 do n=n..(w[i]==0 and "" or w[i]==29 and "_" or string.char(64+w[i])) end
  E[#E+1]={n,w} a=a+0xA0
end
log(#E.." entries")
local CUR=nil
TAP=mem:install_read_tap(TABLE,TABLE+0xF,"tbl",function()
  if not CUR then return end local w=CUR CUR=nil
  local a3=cpu.state["A3"].value
  for i=1,10 do mem:write_u16(a3+0x40+0x10*(i-1),w[i]) end
  cpu.state["A0"].value=w[1]                         -- the first word was already loaded before the table read
end)
wait(600) hold({"Coin 1"},6) wait(60) hold({"Coin 1"},6) wait(60) hold({"1 Player Start"},6) wait(240)
hold({"P1 Shoot / Block"},6) wait(120)                   -- ENTER NAME
run(function() manager.machine:save("htname") end) wait(5)
for n,e in ipairs(E) do
  run(function() manager.machine:load("htname") end) wait(5)
  run(function() CUR=e[2] end)
  for k=1,10 do hold({"P1 Shoot / Block"},6) wait(40) end   -- any name and PIN; the tap swaps in the entry
  wait(250) shot(string.format("ht_%02d_%s_team",n,e[1]))
  hold({"P1 Shoot / Block"},6) wait(120) hold({"P1 Shoot / Block"},6) wait(420) shot(string.format("ht_%02d_%s_tipoff",n,e[1]))
end
