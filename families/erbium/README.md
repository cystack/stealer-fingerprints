# Erbium

Erbium Stealer is a C# / .NET Malware-as-a-Service info-stealer that surfaced in mid-2022 on Russian-speaking crime
forums. The first public report of the family landed in July
2022; a follow-on technical writeup covered the DLL loader and
the panel dashboard at `panel.erbium.ml`. Pricing tiers
observed on the operator channel run from `$9/week` at launch
up to `$100/month` and `$1000/year`. Initial distribution
campaigns rode fake game cracks and cheat installers per
contemporaneous public coverage.

The panel writes `Information.txt` with an ERBIUM ASCII
banner, two `t.me/erbium_*` operator-channel URLs (Developer +
Updates), and five bracketed sections in fixed order:
`[BUILD]`, `[PC INFO]`, `[LOG INFO]`, `[CLIPBOARD]`,
`[ANTIVIRUSES]`. Field lines are tab-indented with a mixed
hyphen / colon separator (hyphen for identity and count
fields, colon for the hardware inventory inside `[PC INFO]`).
`HardwareID` is a 64-character uppercase hex string; the
archive victim folder is named after the same identifier.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Erbium Stealer`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill (Firefox, Chrome, Cyberfox, K-Meleon, BlackHawk, Pale Moon, Thunderbird)
- Crypto wallet extensions and desktop clients
- 2FA extensions (Authenticator, Authy, Trezor)
- FileZilla / VPN credentials
- Card numbers stored by browsers
- Game client sessions and small file grabber

## Detection notes

High-confidence trigger: the `t.me/erbium_support` URL
literal in the banner block plus line-anchored `[BUILD]`
and `[PC INFO]` bracketed section headers. Both
signatures are Erbium-canonical panel emissions; no
other family in this catalog uses the `erbium_support`
handle or the `[BUILD]` + `[PC INFO]` section pair.
Note that Erbium has been observed inside the
`@bugatti_cloud` Telegram aggregator (in this catalog record),
so the outer archive may attribute to a redistributor
even when the panel body is canonical Erbium output.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/erbium_support>
- <https://t.me/erbium_news>

## Sources

- <https://www.cyfirma.com/outofband/erbium-stealer-malware-report/>
- <https://www.bleepingcomputer.com/news/security/new-erbium-password-stealing-malware-spreads-as-game-cracks-cheats/>
- <https://heimdalsecurity.com/blog/erbium-a-new-infostealer-malware-on-the-market/>
- <https://cyware.com/news/erbium-infostealer-targets-web-browsers-and-crypto-wallets-e26a21b9/>

Machine-readable record: [family.json](family.json)
