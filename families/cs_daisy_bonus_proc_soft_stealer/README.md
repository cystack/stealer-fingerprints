# CSDaisyBonusProcSoftStealer

CSDaisyBonusProcSoftStealer is a CyStack-coined identifier
for a heavily-stripped `information.txt` panel observed
inside `Daisy Private Cloud - <N> Pcs - <DD> <Mon> - Bonus.7z`
aggregator packs distributed by the `@UP_DAISYCLOUD` Telegram
channel. Per-victim folders follow a flat
`<CC><HWID-30-CHARS>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<XX>_<N>/`
naming convention (the country code is the leading two letters,
the HWID is a 30-character alphanumeric block, and the trailing
segment encodes a timestamp).

The body ships only two surviving sections from the underlying
panel: a 2-space-indented `[<PID>] <name>.exe` process list and
a `[Software]` Vidar-style section header followed by a
2-space-indented program inventory. No banner, no
`IP / Country / HWID / Computer Name` field block, and no
Redline / Lumma / Vidar canonical anchors survive. The
leading-PID-bracket process-list shape is the reverse of
Aura Stealer and StealC, which emit process entries as
`<name>.exe [<PID>]` (PID after the exe), so those parsers do
not collide on the same body.

Family attribution is provisional pending a published threat-
intel mapping. Veriti (Inside Daisy Cloud: 30K Stolen
Credentials Exposed) and CyberSecurityNews (Daisy Cloud
Hacker Group Exposed 30K Login Credentials) document the
`@UP_DAISYCLOUD` channel as a Telegram credential-trading
channel potentially linked to RedLine Stealer, but the
heavily-stripped Bonus-pack body carries no Redline-canonical
fields, so the Redline lineage claim that the sibling
`CSDaisyCloudStealer` watermarked-variant parser makes for
canonical `UserInformation.txt` cannot be carried over. The
Bonus pack may ship victim records from a different
underlying stealer than the canonical Daisy Cloud channel, or
the same stealer with a different stripping configuration.
The `CSDaisyBonusProcSoftStealer` literal captures the
discovery; rename the family constant if a curated CTI
report later identifies the underlying builder.

**Also known as:** `Daisy Private Cloud Bonus`, `@UP_DAISYCLOUD`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `Daisy Private Cloud Bonus`
**Distribution channels:** `@UP_DAISYCLOUD`

## Targets

- Running-process inventory (PID-bracketed)
- Installed-software inventory

## Variants

### `Daisy Private Cloud Bonus`

**Fingerprint id:** `daisy_private_cloud_bonus`

**Distribution channel:** `@UP_DAISYCLOUD`

**Attribution confidence:** `unknown`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
  [5780] SynTPHelper.exe
  [5788] svchost.exe
  [5880] sihost.exe
  [5912] svchost.exe
  [5964] svchost.exe
  [5984] igfxEM.exe
  [6060] taskhostw.exe
  [5436] svchost.exe
  [5272] svchost.exe
  [5692] ctfmon.exe
  [6236] servicehelper.exe
  [6272] msiexec.exe
  [6280] SmartAudio.exe
  [6304] svchost.exe
  [6336] svchost.exe
  [6528] explorer.exe
  [6904] svchost.exe
  [5956] StartMenuExperienceHost.exe
  [6600] TrustedInstaller.exe
  [6012] TiWorker.exe
  [6788] RuntimeBroker.exe
  [6988] svchost.exe
  [5636] MoUsoCoreWorker.exe
  [7184] SearchApp.exe
  [7372] RuntimeBroker.exe
  [7588] backgroundTaskHost.exe
  [7604] backgroundTaskHost.exe
  [8188] WmiPrvSE.exe
  [4408] svchost.exe
  [2440] svchost.exe
  [2804] svchost.exe
  [8344] TextInputHost.exe
  [8500] RuntimeBroker.exe
  [8584] RuntimeBroker.exe
  [8700] PhoneExperienceHost.exe
  [8708] CAudioFilterAgent64.exe
  [8828] fmapp.exe
  [8904] DolbyDAX2TrayIcon.exe
  [9000] Avro Keyboard.exe
  [8104] f6ddb87b9b.exe
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

## Detection

Confidence anchors: line-anchored `[Software]` section
header AND 10+ 2-space-indented `[<PID>] <name>.exe`
process-list lines. The leading-PID-bracket shape is the
strongest distinguishing signal: Aura and StealC emit
process entries as `<name>.exe [<PID>]` (reversed order),
and `CSSoftwareTailStealer` requires bare `<exe>.exe`
lines with no PID bracket, so those parsers cleanly
decline. The 10-line process-count threshold rejects
unrelated documents that mention a single `[123] foo.exe`
snippet in prose. The body carries no extractable victim
or device fields: the parser is labeling-only. Triage
logs from this family by reading the per-victim folder
name (`<CC><HWID>_<timestamp>`) for victim country, HWID,
and log-time, then cross-reference cred files in the same
folder for accounts and tokens.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)
- [T1518 Software Discovery](https://attack.mitre.org/techniques/T1518/)

## Related families

- [`csdaisycloudstealer`](../csdaisycloudstealer/)
- [`cssoftwaretailstealer`](../cssoftwaretailstealer/)

## References

- https://www.veriti.ai/blog/inside-daisy-cloud-30k-stolen-credentials-exposed/
- https://cybersecuritynews.com/daisy-cloud-hacker-group-exposed-30k-login-credentials/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/UP_DAISYCLOUD
