# CSBrowserFingerprintStealer

CSBrowserFingerprintStealer is a CyStack-coined identifier for
a per-application Chromium fingerprint grabber shipping
``<App>_[<HEX4>].txt`` per-instance fingerprint dumps inside a
``Browser/Fingerprint/`` subfolder. Each dump carries an
INI-section body: `[Local State]`, `[Preferences]`,
`[Metadata]` plus an epoch `Extraction Time:` field. The
grabber targets every Chromium-based desktop install on the
victim, not just browsers: Chrome / Edge / Discord / Riot
Client / G HUB / TapTapGlobal / embedded Chromium caches such
as ``CefBrowserCache`` and ``webcache2`` all get their own
dump.

Observed inside an `APRIL 30 - 12068 LOGS` aggregator pack
that also carries macOS SHub Stealer victims, so this is the
Windows-victim shape within the same distribution pipeline.
The field set overlaps the documented ChromElevator (xaitax /
Chrome-App-Bound- Encryption-Decryption) `--fingerprint` mode,
but ChromElevator emits JSON output rather than the INI-section text observed here. Family attribution is provisional
pending a published mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser fingerprint signals from Chromium-based browsers
- Embedded-Chromium fingerprint signals from Electron apps
- Gaming-platform Chromium installs (Riot Client, TapTapGlobal)
- Chromium settings used to score / spoof victim profiles

## Detection notes

The folder basename `Fingerprint` plus the parent
`Browser/` segment plus 3+ files matching
`<Name>_[<HEX4>].txt` plus the INI-section body
(`[Local State]`, `[Preferences]`, `[Metadata]`,
`Extraction Time:`) is the fingerprint. Avoid false
positives by always requiring the body anchors; the
bracket-hex filename convention alone is too generic.
During triage, treat the per-app fingerprint files as
profile-signal harvest rather than credential dumps.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |
| [T1592.002](https://attack.mitre.org/techniques/T1592/002/) | Gather Victim Host Information: Software |

## Related catalog profiles

- [SHub Stealer](../s-hub-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
