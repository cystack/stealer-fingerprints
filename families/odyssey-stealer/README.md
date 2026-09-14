# Odyssey Stealer

Odyssey Stealer is a macOS infostealer sold as
malware-as-a-service by a Russian-speaking operator. Public
reporting tracks it as a rebrand of Poseidon Stealer, which
itself forked from the AMOS Stealer codebase. Public research
documented the ClickFix delivery chain in April 2026, and a
follow-on evolution writeup covered new obfuscation and
code-signing techniques. A separate writeup covers the same
campaign from the delivery-side view.

The stealer runs as an AppleScript compiled file (.scpt)
launched via osascript. Its info file opens with `External IP:
<ipv4>`, then a bare `System Info` header, then `Username:` /
`Password:` / `Hostname:` / `OS Version:` / `Is CIS:` boolean
fields, then verbatim `system_profiler SPSoftwareDataType` /
`SPHardwareDataType` / `SPDisplaysDataType` output. The `Is
CIS:` flag is set by inspecting
`~/Library/Preferences/com.apple.HIToolbox.plist` for a
Russian keyboard layout; the beacon reports the flag so the
operator can filter or drop CIS victims per campaign. The
harvested password is captured through a fake authentication
dialog rendered via osascript.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Odyssey`, `Poseidon Stealer (predecessor)`, `ClickFix AppleScript stealer`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies (12+ browsers)
- Crypto wallet browser extensions (300+ per public reporting)
- Standalone macOS crypto wallets (16+ apps)
- macOS Keychain database
- Live web-browser session cookies
- Victim login password captured via fake osascript dialog

## Detection notes

The `Is CIS: true` / `Is CIS: false` boolean field is
the strongest single anchor. Combined with `External IP:`
and the macOS `Software:` + `Hardware:` +
`Graphics/Displays:` `system_profiler` section headers,
the fingerprint is unique across the registered parser
corpus. During triage, treat any log with the `Is CIS:`
field as Odyssey; the corresponding `Password:` line
holds the victim login credential the AppleScript grabbed
through the fake auth prompt and must be treated as
compromised. Odyssey samples redistributed through the
BRADMAX Telegram aggregator strip the `SHub Stealer`
banner (present in the sibling SHub family) but preserve
the `Is CIS:` + `External IP:` + `system_profiler` triple
verbatim, so the same parser fingerprint claims both
direct-C2 and aggregator-redistributed samples.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1204.002](https://attack.mitre.org/techniques/T1204/002/) | User Execution: Malicious File |

## Related catalog profiles

- [AMOS Stealer](../amos-stealer/)
- [SHub Stealer](../s-hub-stealer/)
- [MacSync](../mac-sync/)

## Related external families

- `poseidon-stealer`

## Sources

- <https://www.cyfirma.com/research/odyssey-stealer-the-rebrand-of-poseidon-stealer/>
- <https://www.netskope.com/blog/macos-clickfix-lures-deploy-applescript-stealer-persistent-rat>
- <https://www.jamf.com/blog/signed-and-stealing-uncovering-new-insights-on-odyssey-infostealer/>
- <https://www.forcepoint.com/blog/x-labs/odyssey-stealer-attacks-macos-users>
- <https://socprime.com/active-threats/odyssey-stealer-analysis/>

Machine-readable record: [family.json](family.json)
