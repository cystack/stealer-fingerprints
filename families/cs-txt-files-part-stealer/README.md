# CSTxtFilesPartStealer

## Overview / Tổng quan

### English

CSTxtFilesPartStealer is a CyStack-coined identifier for an
Arabic-language Telegram-bot manifest panel that ships as a
three-line `Information.txt` victim file. Observed inside `!! 2025 JULY.part001.rar` at `[<CC>]<ip>/Information.txt` victim
files.

The body carries three emoji-prefixed lines: a `📁 TXT Files | Part <N>` partition header, a `🌍 IP: <ipv4>` victim public IP
line, and a `📦 عدد الملفات: <count>` Arabic file-count line.
The Arabic literal `عدد الملفات` reads as `Number of files`
and is the panel's developer-side label, indicating the
operator is Arabic-speaking. The `Part <N>` suffix on the
header is a per-victim upload-batch identifier the panel emits
when it splits a larger pack across multiple partitions.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The general Telegram-bot
exfiltration shape is broadly documented, but no public source
ties the Arabic file-count literal and the `TXT Files | Part <N>` partition convention to a specific named family.

### Tiếng Việt

CSTxtFilesPartStealer là định danh do CyStack đặt cho một bảng điều khiển (panel) dạng manifest Telegram-bot bằng tiếng Ả Rập, được phát tán dưới dạng tệp nạn nhân ba dòng `Information.txt`. Được quan sát thấy bên trong `!! 2025 JULY.part001.rar` tại `[<CC>]<ip>/Information.txt` tệp nạn nhân.

Phần thân chứa ba dòng có tiền tố emoji: dòng tiêu đề phân đoạn (partition header) `📁 TXT Files | Part <N>`, dòng địa chỉ IP công khai của nạn nhân `🌍 IP: <ipv4>`, và dòng đếm số tệp bằng tiếng Ả Rập `📦 عدد الملفات: <count>`. Chuỗi ký tự tiếng Ả Rập `عدد الملفات` có nghĩa là `Number of files` và là nhãn phía nhà phát triển của panel, cho thấy đối tượng vận hành là người nói tiếng Ả Rập. Hậu tố `Part <N>` trên dòng tiêu đề là định danh lô tải lên (upload-batch) riêng cho từng nạn nhân mà panel tạo dữ liệu đầu ra khi chia một gói lớn hơn thành nhiều phân đoạn.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ tình báo mối đe dọa (threat-intel) được công bố cho bố cục này. Cấu trúc dữ liệu đưa dữ liệu ra ngoài kiểu Telegram-bot nói chung đã được ghi nhận khá rộng rãi, nhưng chưa có nguồn công khai nào liên kết chuỗi ký tự đếm số tệp bằng tiếng Ả Rập cùng quy ước phân đoạn `TXT Files | Part <N>` với một họ mã độc cụ thể được đặt tên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Arabic TXT Files Part Telegram manifest`, `عدد الملفات file-count emoji panel`
- Variants observed: **1**
- CyStack observations represented: **5**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim public IP (in the `🌍 IP:` line) | Địa chỉ IP công khai của nạn nhân (trong dòng `🌍 IP:`) |
| Per-victim harvested-file count (in the Arabic line) | Số lượng tệp đã thu thập được của từng nạn nhân (trong dòng tiếng Ả Rập) |
| Per-victim partition index (`Part <N>` in the header) | Chỉ số phân đoạn của từng nạn nhân (`Part <N>` trong dòng tiêu đề) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the line-anchored `📁 TXT Files | Part`
partition header AND `🌍 IP:` line AND `📦 عدد الملفات:` Arabic
file-count literal. The three-anchor combination cannot
collide with sibling emoji-prefixed panels:
`CSEmojiInfoStealer` uses a different emoji set (`🖥️ User:`,
`🌐 IP:`, `📋 OS Name:`) plus the `📝 Grabbed files:` section
header. During triage, treat the family attribution as
unknown: the underlying builder is undocumented in public
reporting and community catalogues. The `Part <N>` index can
be used to correlate per-victim partitions with the operator's
Telegram-channel upload history.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu phải có đồng thời dòng tiêu đề phân đoạn `📁 TXT Files | Part` neo theo dòng, dòng `🌍 IP:`, VÀ chuỗi ký tự đếm số tệp bằng tiếng Ả Rập `📦 عدد الملفات:`. Sự kết hợp của ba điểm neo này không thể trùng lặp với các panel liên quan có tiền tố emoji khác: `CSEmojiInfoStealer` sử dụng một bộ emoji khác (`🖥️ User:`, `🌐 IP:`, `📋 OS Name:`) cùng với dòng tiêu đề mục `📝 Grabbed files:`. Trong quá trình phân loại (triage), cần coi việc quy kết họ mã độc là chưa xác định: bộ công cụ xây dựng (builder) nền tảng chưa được ghi nhận trong các báo cáo công khai và danh mục cộng đồng. Chỉ số `Part <N>` có thể được dùng để đối chiếu tương quan các phân đoạn của từng nạn nhân với lịch sử tải lên kênh Telegram của đối tượng vận hành.

## Observed log variants

### `v_3d2b0177a66777ae6136d20f2e9eee98`

- Format ID: `cs-txt-files-part-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_3d2b0177a66777ae6136d20f2e9eee98/sample.txt)
- Sample SHA-256: `6871422d1afc975686552e273267158de7757bc9f2a37780a387dae69d5b4aa9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `🌍 IP`, `📦 عدد الملفات`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [CSBestPrivateLoggerStealer](../cs-best-private-logger-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
