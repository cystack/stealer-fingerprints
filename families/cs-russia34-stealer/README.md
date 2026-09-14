# CSRussia34Stealer

CSRussia34Stealer is a CyStack-coined identifier for a
`russia34.com` / `Private Russia 34` stripped Redline-shape
`UserInformation.txt` observed inside
`@ft7links-redline-<TS>-<COUNT>pcs.rar` aggregator packs in
`@ft7links_redline_<NN>_bogonip_<HWIDPFX>/` victim folders.
The panel emits an ASCII-art `REDLINE` banner with three
repeated `https://russia34.com` subscriber lines, then a
stripped Redline-shape field set.

## Research status

- Classification: **Log aggregator**
- Attribution confidence: **unknown**
- Aliases: `russia34`, `Private Russia 34`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

ASCII-art REDLINE banner inside an asterisk-bordered box
followed by `https://russia34.com` subscriber lines is the
cleanest trigger. Pair with the stripped Redline-shape field
set to confirm.

## Families seen in this aggregator

- [lumma](../lumma/)
- [redline](../redline/)
- [redline-like-stealer](../redline-like-stealer/)
- [steal-c](../steal-c/)
- [x-files](../x-files/)

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

No ATT&CK mapping published yet.

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- <https://russia34.com>

Machine-readable record: [family.json](family.json)
