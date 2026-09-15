#!/usr/bin/env python3
"""Rank a stealer log against the public CyStack fingerprint catalog."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from tools.catalog import (
    ROOT,
    CatalogError,
    _configure_utf8_stdio,
    identify,
    print_identify,
)


def main(argv: list[str] | None = None) -> int:
    _configure_utf8_stdio()
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("path", type=Path, help="exported stealer-log text file")
    parser.add_argument("--root", type=Path, default=ROOT, help=argparse.SUPPRESS)
    parser.add_argument("--top", type=int, default=5, help="number of results (1-50)")
    parser.add_argument("--json", action="store_true", help="emit machine-readable JSON")
    args = parser.parse_args(argv)
    try:
        result = identify(args.path, args.root, top=args.top)
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
        print_identify(result)
    return 0 if result["status"] == "match" else 1


if __name__ == "__main__":
    raise SystemExit(main())
