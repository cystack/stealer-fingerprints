# Nexus

## Overview / Tổng quan

### English

Nexus is a small C++ Windows info-stealer sold on the
exploit.in Russian-language crime forum for around $100 per
build with free updates. The first technical
reverse-engineering write-up describes a stub of roughly 460
KB that queries `SOFTWARE\Microsoft\Windows NT\CurrentVersion`
for the Windows version, and writes the small set of harvested
attributes into a HWID-named staging directory before exfil.

The on-disk `Information.txt` carries a six-line box-drawing
ASCII banner spelling NEXUS, a flat `Key: Value` system block,
and a trailer with the Russian `Тема с отзывами:` ("Reviews
thread:") zelenka.guru / Lolzteam link plus the seller's TOX
and JABBER contact addresses (`NEXUSDEVELOPER@EXPLOIT.IN` and
`NEXUSSUPPORT@EXPLOIT.IN`).

Public infection-telemetry research counts Nexus as one of
four distinct families observed across a 50,000-device sample
of 2025 infections, attributing roughly 2% of the sample to
this family. The specific `Information.txt` layout fingerprint
is not yet directly quoted in any public deep-dive, so family
attribution rests on the JABBER self-identification literal
and an independent technical match.

### Tiếng Việt

Nexus là một mã độc đánh cắp thông tin Windows viết bằng C++ có kích thước nhỏ, được rao bán trên diễn đàn tội phạm mạng tiếng Nga exploit.in với giá khoảng 100 đô la mỗi bản build kèm cập nhật miễn phí. Bài phân tích dịch ngược kỹ thuật đầu tiên mô tả một stub có kích thước khoảng 460 KB, thực hiện truy vấn `SOFTWARE\Microsoft\Windows NT\CurrentVersion` để lấy phiên bản Windows, và ghi tập hợp nhỏ các thuộc tính thu thập được vào một thư mục tạm được đặt tên theo HWID trước khi đưa dữ liệu ra ngoài.

`Information.txt` trên đĩa mang một banner ASCII dạng khung kẻ sáu dòng đánh vần NEXUS, một khối hệ thống `Key: Value` dạng phẳng, và phần cuối chứa dòng chữ tiếng Nga `Тема с отзывами:` ("Chủ đề đánh giá:") liên kết đến zelenka.guru / Lolzteam cùng với địa chỉ liên hệ TOX và JABBER của người bán (`NEXUSDEVELOPER@EXPLOIT.IN` và `NEXUSSUPPORT@EXPLOIT.IN`).

Nghiên cứu dữ liệu viễn trắc lây nhiễm công khai ghi nhận Nexus là một trong bốn họ mã độc riêng biệt được quan sát trong một mẫu 50.000 thiết bị bị lây nhiễm năm 2025, quy khoảng 2% mẫu này cho họ mã độc này. Dấu vân tay cấu trúc `Information.txt` cụ thể chưa được trích dẫn trực tiếp trong bất kỳ bài phân tích chuyên sâu công khai nào, do đó việc quy kết họ mã độc dựa trên chuỗi ký tự tự nhận diện qua JABBER và một sự khớp kỹ thuật độc lập.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **medium**
- Aliases: `Nexus Stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Username, hostname, and machine identifiers | Tên người dùng, tên máy và các định danh máy |
| Windows version and OS language | Phiên bản Windows và ngôn ngữ hệ điều hành |
| CPU, GPU, and memory inventory | Thông tin kiểm kê CPU, GPU và bộ nhớ |
| IP address and country geolocation | Địa chỉ IP và vị trí địa lý theo quốc gia |

## Detection notes / Ghi chú nhận diện

### English

The `NEXUSDEVELOPER@EXPLOIT.IN` JABBER literal is the
strongest single fingerprint, since it carries the malware
author's own seller-contact handle and is written into every
log by the panel. The six-line NEXUS box-drawing banner and
the Russian `Тема с отзывами:` zelenka.guru reviews-thread
line provide secondary confirmation. Triage logs from this
family by collecting the flat `Key: Value` system block plus
the HWID; the exfil set is small and contains no banking,
wallet, or session-cookie data on its own (file-grabber
output ships in sibling files inside the same victim folder).

### Tiếng Việt

Chuỗi ký tự JABBER `NEXUSDEVELOPER@EXPLOIT.IN` là dấu vân tay đơn lẻ mạnh nhất, vì nó mang chính bí danh liên hệ bán hàng của tác giả mã độc và được panel ghi vào mọi log. Banner dạng khung kẻ NEXUS sáu dòng và dòng chữ tiếng Nga `Тема с отзывами:` dẫn đến chủ đề đánh giá trên zelenka.guru cung cấp xác nhận bổ sung. Hãy phân loại log của họ mã độc này bằng cách thu thập khối hệ thống `Key: Value` dạng phẳng cùng với HWID; tập dữ liệu đưa ra ngoài có kích thước nhỏ và tự bản thân không chứa dữ liệu ngân hàng, ví tiền điện tử, hay cookie phiên (dữ liệu đầu ra của mô-đun thu thập tệp nằm trong các tệp liên quan bên trong cùng thư mục nạn nhân).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://fr3d.hk/blog/nexus-just-another-stealer>
- <https://flare.io/learn/resources/cybercrime-favorite-target-gamers>

Machine-readable record: [family.json](family.json)
