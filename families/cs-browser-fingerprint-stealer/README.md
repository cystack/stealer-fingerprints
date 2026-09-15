# CSBrowserFingerprintStealer

## Overview / Tổng quan

### English

CSBrowserFingerprintStealer is a CyStack-coined identifier for
a per-application Chromium fingerprint grabber shipping
``<App>_[<HEX4>].txt`` per-instance fingerprint dumps inside a
``Browser/Fingerprint/`` subfolder. Each dump carries an
INI-section body: `[Local State]`, `[Preferences]`,
`[Metadata]` plus an epoch `Extraction Time:` field. The
grabber targets every Chromium-based desktop install on the
victim, not just browsers: Chrome / Edge / Discord / Riot
Client / G HUB / TapTapGlobal / embedded Chromium caches such
as ``CefBrowserCache`` and ``webcache2`` all get their own
dump.

Observed inside an `APRIL 30 - 12068 LOGS` aggregator pack
that also carries macOS SHub Stealer victims, so this is the
Windows-victim shape within the same distribution pipeline.
The field set overlaps the documented ChromElevator (xaitax /
Chrome-App-Bound- Encryption-Decryption) `--fingerprint` mode,
but ChromElevator emits JSON output rather than the INI-section text observed here. Family attribution is provisional
pending a published mapping for this layout.

### Tiếng Việt

CSBrowserFingerprintStealer là định danh do CyStack đặt cho một mô-đun thu thập dấu vân tay trình duyệt (fingerprint grabber) Chromium theo từng ứng dụng, tạo ra các tệp kết xuất dấu vân tay riêng lẻ theo định dạng ``<App>_[<HEX4>].txt`` bên trong thư mục con ``Browser/Fingerprint/``. Mỗi tệp kết xuất mang phần thân dạng section INI: `[Local State]`, `[Preferences]`, `[Metadata]` cùng với trường epoch `Extraction Time:`. Mô-đun này nhắm đến mọi bản cài đặt desktop dựa trên Chromium trên máy nạn nhân, không chỉ giới hạn ở trình duyệt: Chrome / Edge / Discord / Riot Client / G HUB / TapTapGlobal / các bộ đệm Chromium nhúng như ``CefBrowserCache`` và ``webcache2`` đều có tệp kết xuất riêng.

Được quan sát bên trong một gói tổng hợp `APRIL 30 - 12068 LOGS` mà cũng chứa các nạn nhân của macOS SHub Stealer, do đó đây là cấu trúc dữ liệu dành cho nạn nhân Windows trong cùng một chuỗi phân phối. Tập hợp trường dữ liệu có sự trùng lặp với chế độ `--fingerprint` đã được tài liệu hóa của ChromElevator (xaitax / Chrome-App-Bound-Encryption-Decryption), nhưng ChromElevator tạo dữ liệu đầu ra dạng JSON thay vì văn bản dạng section INI như quan sát được ở đây. Việc quy kết họ mã độc vẫn còn mang tính tạm thời cho đến khi có ánh xạ được công bố cho cấu trúc dữ liệu này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser fingerprint signals from Chromium-based browsers | Tín hiệu dấu vân tay trình duyệt từ các trình duyệt dựa trên Chromium |
| Embedded-Chromium fingerprint signals from Electron apps | Tín hiệu dấu vân tay Chromium nhúng từ các ứng dụng Electron |
| Gaming-platform Chromium installs (Riot Client, TapTapGlobal) | Các bản cài đặt Chromium trên nền tảng game (Riot Client, TapTapGlobal) |
| Chromium settings used to score / spoof victim profiles | Các thiết lập Chromium được dùng để tính điểm / giả mạo hồ sơ nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

The folder basename `Fingerprint` plus the parent
`Browser/` segment plus 3+ files matching
`<Name>_[<HEX4>].txt` plus the INI-section body
(`[Local State]`, `[Preferences]`, `[Metadata]`,
`Extraction Time:`) is the fingerprint. Avoid false
positives by always requiring the body anchors; the
bracket-hex filename convention alone is too generic.
During triage, treat the per-app fingerprint files as
profile-signal harvest rather than credential dumps.

### Tiếng Việt

Tên cơ sở của thư mục `Fingerprint` kết hợp với phân đoạn thư mục cha `Browser/`, cộng với 3 tệp trở lên khớp với `<Name>_[<HEX4>].txt`, cộng với phần thân dạng section INI (`[Local State]`, `[Preferences]`, `[Metadata]`, `Extraction Time:`) chính là dấu hiệu nhận diện. Để tránh dương tính giả, luôn yêu cầu có đủ các mốc trong phần thân; chỉ riêng quy ước đặt tên tệp dạng dấu ngoặc-hex là quá chung chung. Trong quá trình phân loại ban đầu, hãy coi các tệp dấu vân tay theo từng ứng dụng là dữ liệu thu thập tín hiệu hồ sơ chứ không phải là dữ liệu đánh cắp thông tin xác thực.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |
| [T1592.002](https://attack.mitre.org/techniques/T1592/002/) | Gather Victim Host Information: Software | Thu thập thông tin máy nạn nhân: phần mềm |

## Related catalog profiles

- [SHub Stealer](../s-hub-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
