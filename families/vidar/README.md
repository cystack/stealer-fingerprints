# Vidar

Vidar Stealer logs. Build 4.x emits a flat key-colon-value
`information.txt` opening with `Ip:`, `Country:`, `Version:`
followed by hardware, locale, and build identity blocks. Vidar
has been distributed since 2018 as a fork of Arkei and remains a
high-volume infostealer family in 2025+.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `VidarStealer`
- Variants observed: **8**
- Historical Logmine records represented: **4,421,157**

## What it targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Telegram and Discord session data
- FTP, email, and VPN client configurations
- Documents and screenshots from the desktop

## Detection notes

Distinctive header trio `Ip:` + `Country:` + `Version:` at the
top of `information.txt`. Build banners reference the operator's
Telegram channel.

## Observed log variants

### `v_00dd9546d45b50ad6aa83079fd410a05`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`, `System.txt`, `systeminfo.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `hardware-section`
- Historical records represented: **4,414,515**
- Representative sample: [open sample](samples/v_00dd9546d45b50ad6aa83079fd410a05/sample.txt)
- Sample SHA-256: `f8f3b3e2c36fe321beff4efe1ef633d15802c81d9406363f4cf2dcc9cddcf71b`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Hardware]`
- Field labels: `VideoCard`

### `v_3d30d56f75090df4b0d9f8d114f8d4bc`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `workdir-video-card`
- Historical records represented: **1,596**
- Representative sample: [open sample](samples/v_3d30d56f75090df4b0d9f8d114f8d4bc/sample.txt)
- Sample SHA-256: `5be5a789c074abc4d9e0cea642aafbedd90ef2b45885fcdd239b0b67b38cbfab`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `VideoCard`, `Work Dir`

### `v_5825071c685a7739b705bb3b6c62eb4f`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `workdir-keyboard-languages`
- Historical records represented: **2,128**
- Representative sample: [open sample](samples/v_5825071c685a7739b705bb3b6c62eb4f/sample.txt)
- Sample SHA-256: `6fc08fb09e1adb855952e95f5d897451e48d36839853fcfcdf4aeda00ecef4bd`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Keyboard Languages`, `Work Dir`

### `v_58c234d75325190bcf406709f63fc9a3`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `keyboard-languages-local-time`
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_58c234d75325190bcf406709f63fc9a3/sample.txt)
- Sample SHA-256: `0fb233b77b45660d467807b2eca99e2f83536071db5e967e52bd6400d2dab828`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Keyboard Languages`, `Local Time`

### `v_7c7fa9256eb052b7159c7f6c24b3bd26`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`
- Panel brand: `russia34.com aggregator (legacy mixed-shape)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `video-card-processes`
- Historical records represented: **1,778**
- Representative sample: [open sample](samples/v_7c7fa9256eb052b7159c7f6c24b3bd26/sample.txt)
- Sample SHA-256: `a2b3a415b23ed86b236de21e56a6aa6706e044211ec7e7f0b03982e1b2db7122`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Processes]`, `[Software]`
- Field labels: `VideoCard`

### `v_803053a76f889340f463f6baa3a81c4c`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `video-card-processes`
- Historical records represented: **1,012**
- Representative sample: [open sample](samples/v_803053a76f889340f463f6baa3a81c4c/sample.txt)
- Sample SHA-256: `0e7dee31a097367bda758f6da974c525f01902b13edca178f6ebe7d5ca049f9f`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Processes]`, `[Software]`
- Field labels: `VideoCard`

### `v_935a854f26e6a11cb5c3868965b79119`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `workdir-windows-av`
- Historical records represented: **15**
- Representative sample: [open sample](samples/v_935a854f26e6a11cb5c3868965b79119/sample.txt)
- Sample SHA-256: `02207369a06c39411e67af0de28409753598fea7c1771d6ad69708f8c1ee8b72`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `AV`, `Windows`, `Work Dir`

### `v_c4b6aaa7d5800948365271c046e748ef`

- Parser: `logmine.ioc.parsers.vidar.VidarParser`
- Observed filenames: `information.txt`
- Panel brand: `russia34.com (Lumma 'Russia 34' bullet)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `video-card-processes`
- Historical records represented: **108**
- Representative sample: [open sample](samples/v_c4b6aaa7d5800948365271c046e748ef/sample.txt)
- Sample SHA-256: `1b498c5523b37957d934b764ad255f8760af4d8e5cab23d1fa342f43ae32167c`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Processes]`, `[Software]`
- Field labels: `VideoCard`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/Clik_Start>

## Sources

- <https://usrlnk.io/vidar>
- <https://www.kaspersky.com/resource-center/threats/vidar-stealer>

Machine-readable record: [family.json](family.json)
