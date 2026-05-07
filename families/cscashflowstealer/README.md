# CSCashFlowStealer

CSCashFlowStealer is a CyStack-coined identifier for the
heavily-stripped `CashFlow Premium Cloud` `System.txt` log
observed inside `@ft7links`-distributed packs alongside the
CSArtHouseCloudStealer distribution. The body wraps the same
XFiles-derivative victim-info block as `CSArtHouseCloudStealer`
but uses a different distributor's banner. The
`@HUNTER_CLOUDS` support handle in the footer and the
`t.me/Link_CashFlow` channel reference identify the
distribution path.

**Also known as:** `CashFlow Premium Cloud`, `C4SHFL0W PR3M1UM CL0UD`

## Variants

### `cystack_18ae3e96`

**Field keys:**
`Country`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
t✅me/+GnCJu3Wqao1jBhi = CASHFLOW•PREMIUM•CLOUD•LOGS — best cloud




























t.me/Link_CashFlow = CASHFLOW|PREMIUM|CLOUD|LOGS — best cloud














Country: BD (Bangladesh)
Operating System: Windows 11
Username: <redacted>
```

### `cystack_604764a3`

**Field keys:**
`CPU (Processor)`, `Country`, `IP`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
t . m e / + G n C J u 3 W q a o 1 j B h i = C4SHFL0W PR3M1UM CL0UD L0G5 — premium quality daily




























t✅me/Link_CashFlow = C4SHFL0W PR3M1UM CL0UD L0G5 — fresh daily

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



IP: <redacted>
Country: AU (Australia)
Operating System: Windows 11
Username: <redacted>
CPU (Processor): Intel(R) N200
```

### `cystack_931e4ef2`

**Field keys:**
`Country`, `IP`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
CASHFLOW|PREMIUM|CLOUD|LOGS — premium Cashflow logs → t . m e / L i n k _ C a s h F l o w




























t dot me slash Link_CashFlow = C A S H F L O W   P R E M I U M   C L O U D   L O G S — premium quality daily

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



IP: <redacted>
Country: AU (Australia)
Operating System: Windows 11
Username: <redacted>
```

## Detection

Header banner `t . m e / + ... = C4SHFL0W PR3M1UM CL0UD L0G5`
with the leetspeak digits and spaced URL is the cleanest
trigger. Companion footer line carries `@HUNTER_CLOUDS`
support reference and `Link_CashFlow` channel handle.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`xfiles`](../xfiles/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)
- [`cshuntercloudstealer`](../cshuntercloudstealer/)

## References

- t.me/Link_CashFlow
