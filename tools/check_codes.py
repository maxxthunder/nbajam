"""Decode every password on the codes page and in the README table, and fail if one doesn't match its record.

Usage: python tools/check_codes.py
Records are written "W–L, streak S, N teams beaten" (or "all 27 teams beaten").
"""
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import nbajam_password as P  # noqa: E402
import nbajam_te_password as T  # noqa: E402

REC = re.compile(r"(\d+)–(\d+), streak (\d+), (all 27|\d+) teams? beaten")


def want(record):
    m = REC.search(record)
    if not m:
        raise ValueError("can't read record " + repr(record))
    w, l, s, t = m.groups()
    return int(w), int(l), int(s), 27 if t == "all 27" else int(t)


def got(ini, pw):
    d = (P if len(pw) == 14 else T).decode(ini, pw)
    teams = bin(d["teams"]).count("1") if len(pw) == 14 else d["teams"]
    return d["wins"], d["losses"], d["streak"], teams


def main():
    root = os.path.dirname(HERE)
    cases = []
    page = open(os.path.join(HERE, "nbajam_codes.html"), encoding="utf-8").read()
    cases += [("codes page", r, i, p) for r, i, p in re.findall(r"\['([^']*)', '[^']*', 'pw:(\w+)\|(\w+)'", page)]
    readme = open(os.path.join(root, "README.md"), encoding="utf-8").read()
    cases += [("README", r, i, p) for i, p, r in re.findall(r"^\|[^|]*\| `(\w+)` \| `(\w+)` \| ([^|]*)\|", readme, re.M)]
    bad = 0
    for where, record, ini, pw in cases:
        try:
            ok = got(ini, pw) == want(record)
        except ValueError as e:
            ok, record = False, f"{record} ({e})"
        if not ok:
            bad += 1
            print(f"{where}: {ini} {pw} isn't {record}")
    print(f"{len(cases)} passwords, {bad} wrong")
    assert len(cases) >= 7, "found too few passwords; did the page format change?"
    sys.exit(1 if bad else 0)


if __name__ == "__main__":
    main()
