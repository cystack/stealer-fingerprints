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
[... 28 blank lines ...]
t.me/Link_CashFlow = CASHFLOW|PREMIUM|CLOUD|LOGS — best cloud
[... 14 blank lines ...]
Country: BD (Bangladesh)
Operating System: Windows 11
Username: <redacted>
```

### `cystack_4afc8936`

**Field keys:**
`Country`, `HWID`, `IP`, `Operation System`, `ScreenSize`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
CASHFLOW PREMIUM CLOUD LOGS — top cashflow → t dot me slash +GnCJu3Wqao1jBhi
[... 28 blank lines ...]
CASHFLOW|PREMIUM|CLOUD|LOGS — top cashflow → t/me/+GnCJu3Wqao1jBhi

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
UserName: <redacted>
Country: UNKNOWN
HWID: <redacted>
ScreenSize: {Width = 1920,Height = 1080}TimeZone: (UTC+07:00) Bangkok, Hanoi, Jakarta
Operation System: Windows 10 Pro x64
```

### `cystack_530b5636`

**Field keys:**
`Chipset Model`, `Memory`, `Model Name`, `Resolution`, `User Name`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
C4SHFL0W PR3M1UM CL0UD L0G5 — top cashflow → t.me / +GnCJu3Wqao1jBhi
[... 28 blank lines ...]
t/me/Link_CashFlow = C A S H F L O W   P R E M I U M   C L O U D   L O G S — premium quality daily
[... 14 blank lines ...]
Username: <redacted>
User Name: <redacted>
Model Name: iMac
Memory: 24 GB
Chipset Model: AMD Radeon Pro 5300
Resolution: Retina 5K (5120 x 2880)
```

### `cystack_604764a3`

**Field keys:**
`CPU (Processor)`, `Country`, `IP`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
t . m e / + G n C J u 3 W q a o 1 j B h i = C4SHFL0W PR3M1UM CL0UD L0G5 — premium quality daily
[... 28 blank lines ...]
t✅me/Link_CashFlow = C4SHFL0W PR3M1UM CL0UD L0G5 — fresh daily

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
Country: AU (Australia)
Operating System: Windows 11
Username: <redacted>
CPU (Processor): Intel(R) N200
```

### `cystack_7043df8f`

**Field keys:**
`Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
C4SHFL0W PR3M1UM CL0UD L0G5 — best cloud → t . m e / + G n C J u 3 W q a o 1 j B h i
[... 28 blank lines ...]
t dot me slash +GnCJu3Wqao1jBhi = CASHFLOW|PREMIUM|CLOUD|LOGS — premium Cashflow logs

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
Operating System: Windows 10
Username: <redacted>
```

### `cystack_931e4ef2`

**Field keys:**
`Country`, `IP`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
CASHFLOW|PREMIUM|CLOUD|LOGS — premium Cashflow logs → t . m e / L i n k _ C a s h F l o w
[... 28 blank lines ...]
t dot me slash Link_CashFlow = C A S H F L O W   P R E M I U M   C L O U D   L O G S — premium quality daily

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
Country: AU (Australia)
Operating System: Windows 11
Username: <redacted>
```

### `cystack_a5b1cb3f`

**Field keys:**
`Country`, `HWID`, `Operation System`, `ScreenSize`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
t . me / +GnCJu3Wqao1jBhi = C4SHFL0W PR3M1UM CL0UD L0G5 — fresh daily
[... 28 blank lines ...]
t.me / +GnCJu3Wqao1jBhi = C4SHFL0W PR3M1UM CL0UD L0G5 — premium quality daily
[... 14 blank lines ...]
UserName: <redacted>
Country: UNKNOWN
HWID: <redacted>
ScreenSize: {Width = 2560,Height = 1440}TimeZone: (UTC+09:00) 서울
Operation System: Windows 10 Home x64
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
