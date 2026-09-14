# CSEssentialMacStealer

CSEssentialMacStealer is a CyStack-coined identifier for a
macOS stealer that self-identifies with the first-line banner
``Essential macOS Stealer``. The file is a
``UserInformation.txt`` with a compact preamble (``Build:``
per-build identifier plus captured ``Username:`` /
``Password:`` login credentials plus ``IP Address:``) followed
by three ``system_profiler`` section blocks: ``Software:``,
``Hardware:``, and ``Graphics/Displays:``. Each block wraps
verbatim output from the corresponding ``system_profiler``
data type with the nested 4-6 space indentation preserved.

The body shape is structurally identical to Phexia macOS
Stealer per public writeups, and a published interview with
the Phexia developer confirms that Phexia is one of multiple
forks of the shared Mac.c stealer module. ``Essential`` may be
another Mac.c fork or a rebrand of one of the documented
siblings, but public reporting does not document this specific
banner. Family attribution is provisional pending a published
threat-intel writeup for the ``Essential macOS Stealer``
banner.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Essential macOS Stealer`, `Mac.c-fork-shape stealer with Essential banner`
- Variants observed: **0**

## What it targets

- macOS login credentials (captured directly in the
``Username:`` / ``Password:`` preamble pair)
- Host hardware and OS fingerprint (Mac model, chip, RAM,
display, Hardware UUID, Provisioning UDID, system
firmware)
- Account identity (login name, display name, computer
name)

## Detection notes

Fingerprint requires the literal ``Essential macOS
Stealer`` first-line banner substring. The banner is
the family self-identification and is unique across
the registry; sibling macOS-stealer banners
(``Phexia macOS Stealer`` / ``MacSync Stealer`` /
``SHub Stealer`` / ``mac.c macOS Stealer``) are all
mutually exclusive substrings so no collision is
possible. During triage, treat the captured
``Password:`` line as high-value: the stealer records
the victim's macOS login password in cleartext,
so credential rotation on the affected account is
priority-one during incident response. Companion
files in the victim folder (keychain dumps, browser
exports, wallet artifacts) will typically be present
under standard Phexia-shape filenames.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |

## Related catalog profiles

- [Phexia](../phexia/)
- [MacSync](../mac-sync/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)
- [SHub Stealer](../s-hub-stealer/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
