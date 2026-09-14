#!/usr/bin/env python3
"""Identify an exported stealer-log text file from a repository checkout."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from tools.catalog import CatalogError, _print_identify, identify


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        prog="identify.py",
        description="Identify an exported information-stealer log by its text structure.",
    )
    parser.add_argument(
        "path", type=Path, help="UTF-8, UTF-16, or Windows-1252 log text to inspect"
    )
    parser.add_argument("--top", type=int, default=3, help="number of matches to show (1-20)")
    parser.add_argument(
        "--known-only", action="store_true", help="hide unattributed structural clusters"
    )
    parser.add_argument("--json", action="store_true", help="emit machine-readable JSON")
    args = parser.parse_args(argv)
    try:
        result = identify(args.path, top=args.top, known_only=args.known_only)
    except CatalogError as exc:
        print(
            json.dumps(
                {"status": "error", "code": exc.code, "message": str(exc)},
                ensure_ascii=False,
                separators=(",", ":"),
            ),
            file=sys.stderr,
        )
        return 1
    if args.json:
        print(json.dumps(result, ensure_ascii=False, indent=2))
    else:
        _print_identify(result)
    return 0 if result["matches"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
