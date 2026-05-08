# CSBabaStealer

CSBabaStealer is a CyStack-coined identifier for a self-named
`.B.A.B.A.` Lumma-rebrand `System.txt` log observed inside
`@ft7links`-distributed packs alongside canonical Lumma content.
The `@ft7links` operator labels the archive `lumma` and ships
both genuine Lumma logs and this Lumma-shaped rebrand under one
cover.

**Also known as:** `.B.A.B.A.`, `Baba Logs`

## Variants

### `cystack_ce7d07a2`

**Field keys:**
`Configuration`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
# Buy Now Logs : @Xavier_Log { Admin - @Mr_Xavier_Logan} *
# Buy Now ULP : @Xavier_Ulp { Admin - @Mr_Xavier_Logan} *
- .B.A.B.A. Build : Mar 29 2026
Configuration :
- Path: 
- OS Version: 
- Local Date : 29/03/2026 <ip>

- Time Zone: 1
- Install Date: 
- Elevated: 
- Computer: Baba_Logs_Ulp
- User: goran
- Domain: 
- Hostname: 
- NetBIOS: 
- Language: English Serbian (L
- Anti Virus:
    - 
- HWID: C6D6434E9C6F2681688B-7a2053ef-0f68
- RAM Size: 4093 MB
- CPU Vendor: AMD
- CPU Name: AMD Phenom(tm) II X4 965 Processor
- CPU Threads: 
- CPU Cores: 
- GPU:
    - AMD Radeon HD 5700 Series
- Display resolution: 
- IP Address: <ip>
- Country: RS

- Time: 29/03/2026 <ip> (sig: auto )
- LID: @Xavier_Log { Admin - @Mr_Xavier_Logan} TELEGRAM
```

## Detection

The `.B.A.B.A. Build :` literal (note the dotted spelling and
the space before the colon) is the unambiguous trigger.
Distributed alongside Lumma proper; presence of either
parser's claim does not exclude the other.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)

## References

- https://socradar.io/blog/malware-analysis-lummac2-stealer/
- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
- https://www.gendigital.com/blog/insights/research/remus-64bit-variant-of-lumma-stealer
- https://github.com/MalBeacon/what-is-this-stealer
