# SantaStealer

SantaStealer is a malware-as-a-service info-stealer
first publicly documented by Rapid7 in December 2025.
The operation is a rebrand of an earlier project named
BluelineStealer; the SantaStealer brand is the operator-
side relaunch ahead of an end-of-year launch push.
Rapid7 obtained samples and access to the affiliate web
panel, and identified a Russian-speaking developer.
Pricing is Basic at $175 per month and Premium at $300
per month, advertised on Telegram and hacker forums.

The malware runs 14 data-collection modules in parallel
threads (browser passwords, cookies, history, credit
cards, Telegram / Discord / Steam sessions, crypto
wallet apps and browser extensions, document grabber,
desktop screenshots). Collected data is written to
memory, archived into a `Log.zip` file in `%TEMP%`,
split into 10 MB chunks, and exfiltrated over
unencrypted HTTP to a hardcoded C2 IP on port 6767.
The malware self-advertises through the Telegram
channel `t.me/SantaStealer`, which is also embedded
verbatim in every artifact the malware writes.

**Also known as:** `Santa Stealer`, `BluelineStealer`

**Variants observed:** 1
**Top attribution confidence:** `high`
**Distribution channels:** `t.me/SantaStealer`

## Targets

- Browser saved credentials (Chromium and Gecko)
- Browser cookies, history, autofill
- Saved credit card data from browsers
- Cryptocurrency wallet apps and browser extensions
- Telegram, Discord, and Steam session data
- Documents matching the file-grabber filter list
- Desktop screenshots

## Variants

### `cystack_c65f37b2`

**Distribution channel:** `t.me/SantaStealer`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    ███████╗ █████╗ ███╗   ██╗████████╗ █████╗      ███████╗████████╗███████╗ █████╗ ██╗     ███████╗██████╗    
██╔════╝██╔══██╗████╗  ██║╚══██╔══╝██╔══██╗     ██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║     ██╔════╝██╔══██╗   
███████╗███████║██╔██╗ ██║   ██║   ███████║     ███████╗   ██║   █████╗  ███████║██║     █████╗  ██████╔╝   
╚════██║██╔══██║██║╚██╗██║   ██║   ██╔══██║     ╚════██║   ██║   ██╔══╝  ██╔══██║██║     ██╔══╝  ██╔══██╗   
███████║██║  ██║██║ ╚████║   ██║   ██║  ██║     ███████║   ██║   ███████╗██║  ██║███████╗███████╗██║  ██║   
╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝     ╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝   
t.me/SantaStealer     t.me/SantaStealer     t.me/SantaStealer     t.me/SantaStealer     t.me/SantaStealer  
[... 3 blank lines ...]
Found 36 Sensitive files. Many of these will be false positives

File Name                          | Size (bytes) | Full Path
---------------------------------- | ------------ | --------------------------------------------------
MOCK BRAND AND STYLE GUIDELINES_20 | 189974       | C:\Users\<user>\\Desktop\AmeriPrise\Assessment\MOCK BRAND AND STYLE GUIDELINES_2024.pdf
ABC.pdf                            | 134676       | C:\Users\<user>\\Pictures\Mummy\Documents\ABC.pdf
CEIR Request Details.pdf           | 377933       | C:\Users\<user>\\Pictures\Mummy\Documents\CEIR Request Details.pdf
COOCKIE_labreport.pdf              | 184259       | C:\Users\<user>\\Pictures\Mummy\Documents\COOCKIE_labreport.pdf
10th marksheet.pdf                 | 118354       | C:\Users\<user>\\Downloads\10th marksheet.pdf
Adobe Scan 25 Jan 2025 (1).pdf     | 555532       | C:\Users\<user>\\Documents\Adobe Scan 25 Jan 2025 (1).pdf
12th marksheeet.pdf                | 360267       | C:\Users\<user>\\Downloads\12th marksheeet.pdf
2025710409_VIVEK KUMAR_MCA.pdf     | 154253       | C:\Users\<user>\\Downloads\2025710409_VIVEK KUMAR_MCA.pdf
[... truncated; full sample at ``sample.txt`` (approx. 28 more lines) ...]
```

## Detection

The strongest single signal is the verbatim Telegram
channel handle `t.me/SantaStealer`, embedded by the
malware`s configuration and written into every artifact
the malware emits. Paired with the file-grabber
manifest header `Found N Sensitive files. Many of
these will be false positives`, the family attribution
is high-confidence. The ASCII-art `SANTA STEALER`
banner uses Unicode box-drawing characters, so triage
rules should anchor on the channel handle and template
literal rather than the banner text itself.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)

## References

- https://www.rapid7.com/blog/post/tr-santastealer-is-coming-to-town-a-new-ambitious-infostealer-advertised-on-underground-forums/
- https://www.bleepingcomputer.com/news/security/new-santastealer-malware-steals-data-from-browsers-crypto-wallets/
- https://www.theregister.com/2025/12/16/santastealer_stuffs_users_credentials_crypto
- https://t.me/SantaStealer
