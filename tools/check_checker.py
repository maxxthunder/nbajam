"""Cross-check the JS in nbajam_password_checker.html against nbajam_password.py and nbajam_te_password.py (needs node).

Usage: python tools/check_checker.py
Decodes passwords made by the encoder and random strings with both, and fails on any difference
in the decoded fields or valid/invalid.
"""
import json
import os
import random
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import nbajam_password as P  # noqa: E402
import nbajam_te_password as T  # noqa: E402

JS = r"""
const fs = require("fs");
const src = [...fs.readFileSync(process.argv[1], "utf8").matchAll(/<script>([\s\S]*?)<\/script>/g)].pop()[1];
const module = { exports: {} };
new Function("module", src)(module);
const cases = JSON.parse(fs.readFileSync(0, "utf8"));
console.log(JSON.stringify(cases.map(([fn, ...c]) => { try { return module.exports[fn](c); } catch (e) { return null; } })));
"""


def main(n=5000):
    rnd = random.Random(1)
    cases = []
    for _ in range(n):
        ini = "".join(rnd.choice(P.LETTERS) for _ in range(3))
        f = {"wins": rnd.randrange(256), "losses": rnd.randrange(256), "streak": rnd.randrange(256),
             "teams": rnd.randrange(P.ALL_TEAMS + 1)}
        cases.append(("decode", ini, P.encode(ini, f)))
        cases.append(("decode", ini, "".join(rnd.choice(P.ALPHABET) for _ in range(14))))
        w = rnd.randrange(256)
        f = {"wins": w, "losses": rnd.randrange(256), "streak": rnd.randrange(w + 1), "teams": rnd.randrange(min(w, 27) + 1)}
        cases.append(("decodeTE", ini, T.encode(ini, f)))
        cases.append(("decodeTE", ini, "".join(rnd.choice(T.ALPHABET) for _ in range(10))))
    want = []
    for fn, ini, pw in cases:
        try:
            want.append((P if fn == "decode" else T).decode(ini, pw))
        except ValueError:
            want.append(None)
    html = os.path.join(HERE, "nbajam_password_checker.html")
    got = json.loads(subprocess.run(["node", "-e", JS, html], input=json.dumps(cases),
                                    capture_output=True, text=True, check=True).stdout)
    bad = [(c, w, g) for c, w, g in zip(cases, want, got) if w != g]
    for c, w, g in bad[:10]:
        print("MISMATCH", c, "py:", w, "js:", g)
    print(f"{len(cases)} cases ({sum(w is not None for w in want)} valid), {len(bad)} mismatches")
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
