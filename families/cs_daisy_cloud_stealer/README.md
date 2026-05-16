# CSDaisyCloudStealer

CSDaisyCloudStealer is a CyStack-coined identifier for a
per-line-watermarked `UserInformation.txt` panel distributed
through the `@UP_DAISYCLOUD` Telegram channel. Each line in
the body is prefixed with an obfuscated `Daisy Private cloud`
banner (digit-noise injected between every letter of `Daisy`,
`Private`, and `cloud`) plus a 4-9-character random
alphabetic gibberish token before the actual `Key: Value`
payload. The watermark digits and gibberish vary per line
as an anti-leech mechanism: a single grep for the channel
name fails on any individual line. After stripping the
watermark the body is a canonical RedlineLike variant 3
layout (Buy-now banner plus extended-block) with the
`Operation System:` Redline-canonical typo and the full
`Computer Name:` / `Domain Name:` / `MachineID:` /
`Product Key:` / extended-block field set.

Daisy Cloud has run on Telegram since October 2023 and is
documented by VERITI / Security Boulevard and
CyberSecurityNews as "potentially linked to the notorious
RedLine Stealer family" - both attributions hedge with
"potentially" / "appears to come from", and no curated CTI
vendor confirms the channel reliably resells a single
named family. Family attribution is provisional pending a
published threat-intel report that maps the watermark
directly to a canonical builder.

**Also known as:** `@UP_DAISYCLOUD obfuscated UserInformation.txt`, `Daisy Private cloud per-line watermark variant`

**Variants observed:** 1
**Top attribution confidence:** `low`
**Operator panel brands:** `Daisy Private cloud`
**Distribution channels:** `@UP_DAISYCLOUD`

## Targets

- Browser-saved credentials (harvested by underlying stealer)
- Host metadata: hostname, NetBIOS / domain, Windows username
- OS fingerprint with build number and architecture
- Hardware inventory: CPU model, GPU model, installed RAM
- Victim public IP plus ISO country code
- HWID and Windows MachineID
- Wallpaper SHA-1 hash

## Variants

### `Daisy Private cloud`

**Fingerprint id:** `daisy_private_cloud`

**Distribution channel:** `@UP_DAISYCLOUD`

**Attribution confidence:** `low`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```

 
D2a7i2s6y6 P6r5i0v9a0t3e c9l1o8u4d3     tplqr Log date: 06 Nov 25 <ip>
D7a1i8s9y0 P9r7i5v0a7t5e c1l6o4u8d0     hhev # Buy now: TG @UP_DAISYCLOUD
D2a8i9s1y7 P6r2i6v7a3t1e c6l8o4u0d6     ydpphcqq HWID: 5RS8R375P88KNDMFTTM
D2a7i2s6y6 P6r5i0v9a0t3e c9l1o8u4d3     ibxx Country: HU
D4a9i5s4y5 P0r0i9v1a0t5e c8l2o0u4d7     wgiaasn IP: <ip>
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     tfvqyen System Language: Hungarian
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     zkjq Processor: 12th Gen Intel(R) Core(TM) i5-1235U
D3a3i4s7y6 P4r1i0v7a9t1e c1l0o7u1d5     opkm Installed RAM: 16052 MB
D3a3i4s7y6 P4r1i0v7a9t1e c1l0o7u1d5     mycpxcvy Operation System: Windows 11 24H2 build 26200 (64 Bit)
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     tugi Graphics card: Intel(R) Iris(R) Xe Graphics
D7a1i8s9y0 P9r7i5v0a7t5e c1l6o4u8d0     hter Computer Name: MARCSI
D2a8i9s1y7 P6r2i6v7a3t1e c6l8o4u0d6     xchyt Domain Name: WORKGROUP
D3a5i3s1y6 P0r0i2v1a8t4e c5l4o0u2d3     ilbriebtc MachineID: 95eb2b58-389d-4853-9789-61406c29208e
D2a8i9s1y7 P6r2i6v7a3t1e c6l8o4u0d6     snil Product Key:
D2a8i9s1y7 P6r2i6v7a3t1e c6l8o4u0d6     zqqnpxp -------------
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     nzcoohlbt User Name: erdei
D7a1i8s9y0 P9r7i5v0a7t5e c1l6o4u8d0     fvrm Admin Group: FALSE
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     znonsvwfx Integrity: Medium
D2a8i9s1y7 P6r2i6v7a3t1e c6l8o4u0d6     dglghmq TimeZone: UTC+1
D7a1i8s9y0 P9r7i5v0a7t5e c1l6o4u8d0     hgzxlb UserLanguage: Hungarian
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     kjwvq Keyboard Language: Hungarian
D3a5i3s1y6 P0r0i2v1a8t4e c5l4o0u2d3     tadamltim Display Resolution: 1920x1080
D4a1i2s2y1 P6r2i7v6a5t6e c3l1o6u5d6     mhombi Wallpaper Hash: 9406713973e26975f1b32d6d78fdef5e3dafa2b9
D4a2i5s3y0 P0r4i2v0a6t6e c1l0o8u9d5     
```

## Detection

Fingerprint requires 3+ matches of the digit-interspersed
`Daisy Private cloud` watermark regex AND the
`Operation System:` Redline-canonical typo substring. The
3-match threshold rejects unrelated text that happens to
quote the channel name once; the OS typo confirms the
underlying body is Redline-shape rather than an arbitrary
watermarked file. During triage, the parser strips the
per-line watermark before field extraction, then recovers
the standard Redline-shape IOC fields. Treat the
attribution as low-confidence: the channel reportedly
resells RedLine logs but the body could also come from a
Redline fork or an unrelated stealer that adopted
Redline's `UserInformation.txt` field layout.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redline`](../redline/)
- [`redlinelike-stealer`](../redlinelike_stealer/)
- [`cs-primo-cloud-stealer`](../cs_primo_cloud_stealer/)
- [`cs-darkside-cloud-stealer`](../cs_darkside_cloud_stealer/)

## References

- https://cybersecuritynews.com/daisy-cloud-hacker-group-exposed-30k-login-credentials/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/UP_DAISYCLOUD
