# CSHardwareTailStealer

CSHardwareTailStealer is a CyStack-coined identifier for a
stripped hardware-only `Info.txt` shipped through the
`@STEALERBOSS` Telegram aggregator under the
`STEALERCLOUD#<N>` per-victim-folder watermark. The body
carries the canonical Remus Stealer YAML hardware-block
keys (`product:`, `core count:`, `thread count:`, `ram:`,
`gpu:`, `display:`). The `build:` and `os:` parent blocks
and every identification field (banner, IP, country, time,
user, hostname, install path, antivirus) are absent.

Two truncation variants ship in the same broker pack.
Variant A keeps the CPU block intact and adds a new
`core enabled:` field that mirrors `core count:`. Variant
B strips the CPU block down to a bare `thread count:`
line and instead ships a `motherboard:` block carrying
Win32_BaseBoard `manufacturer:` and `product:` values.
Both variants share the same `ram:` / `gpu:` / `display:`
tail.

The broker likely repackages hardware fragments as a sample
preview before charging buyers for the full log. Family
attribution is provisional: the body is structurally Remus
derived but the load-bearing identification fields that
would confirm Remus are all stripped, and no surveyed CTI
vendor or community catalogue documents a STEALERCLOUD or
STEALERBOSS family layout. Rename this entry if a stronger
attribution surfaces.

**Also known as:** `STEALERCLOUD`, `STEALERBOSS hardware tail`

**Variants observed:** 1
**Top attribution confidence:** `low`
**Operator panel brands:** `STEALERCLOUD`
**Distribution channels:** `@STEALERBOSS`

## Targets

- CPU model, core count, and thread count
- RAM SPD product strings and per-stick capacity
- GPU adapter names
- Primary display resolution

## Variants

### `STEALERCLOUD`

**Fingerprint id:** `stealercloud`

**Distribution channel:** `@STEALERBOSS`

**Attribution confidence:** `low`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
    product: Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz
    core count: 4
    core enabled: 4
    thread count: 8
  ram:
  - product: CT8G4SFRA266.C8FE   
    size: 8192MB
  gpu:
  - Intel(R) UHD Graphics 620
  display: 1920x1080
```

## Detection

Triple-anchor fingerprint: a line-anchored `core enabled:`
key (with leading whitespace and an integer value), a
line-anchored `  display:` line at 2-space indent carrying
a `<W>x<H>` scalar, and the absence of a top-level
`build:` key at column 0. The triple rules out canonical
Remus (which always opens at column 0 with `build:`) and
documents the disjoint claim region from
`RemusParser`. The body ships no victim-identifying fields,
so any IOC produced from this layout carries only the
hardware inventory.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`Remus Stealer`](../remus_stealer/)

## References

- @STEALERBOSS
