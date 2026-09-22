# Rivas Stealer

## Overview / Tổng quan

### English

Observed-self-label profile for a `Rivas Stealer` system
report redistributed under the @VidarTraffics Telegram
aggregator inside `@VidarTraffics <count> Mix Bonus <DD>-<MM>-<YYYY>.part<N>.rar` packs at `@VidarTraffics New Fresh Logs #<N>/Information.txt` victim folders.

The body opens with a two-line `=` fence framing a centered
`Rivas Stealer Report` title, then three pipe-decorated
sections in fixed order: `---| User Info |---`,
`---| Hardware Info |---`, `---| Network |---`. The
`User Info` and `Hardware Info` blocks use padded
`Key : Value` grammar with the key left-justified to a
fixed 10-character column. Fields collected: `Username`,
`PC Name`, `OS Version`, `HWID` (Windows machine-GUID
literal in curly braces), `CPU`, `GPU`, `RAM` (GB-suffixed),
`Screen` (`WIDTHxHEIGHT`). The `Network` block is a bare
ordered list without keys carrying a canned geo-lookup
payload (status, country name, ISO country code, region
code, region name, city, postal code, latitude, longitude,
IANA timezone, ISP, ASN and AS-name, public IP).

The `Rivas Stealer` self-label names this profile but no
independent curated or community threat-intel writeup as
of integration establishes payload lineage. The pipe-decorated
section syntax and padded-key field grammar are not
documented in any surveyed canonical family. Family
attribution is preserved as the panel self-label with
unknown confidence; @VidarTraffics is a Telegram log-aggregator
reseller that repackages logs from multiple underlying
builders, so the distribution channel is recorded as
attribution context rather than lineage.

### Tiếng Việt

Hồ sơ tự gán nhãn quan sát được cho báo cáo hệ thống `Rivas Stealer`, được phát tán lại thông qua bộ tổng hợp Telegram @VidarTraffics bên trong các gói `@VidarTraffics <count> Mix Bonus <DD>-<MM>-<YYYY>.part<N>.rar` tại các thư mục nạn nhân `@VidarTraffics New Fresh Logs #<N>/Information.txt`.

Phần thân bắt đầu bằng một khung rào hai dòng `=` bao quanh tiêu đề `Rivas Stealer Report` được căn giữa, sau đó là ba phần được trang trí bằng ký tự pipe theo thứ tự cố định: `---| User Info |---`, `---| Hardware Info |---`, `---| Network |---`. Các khối `User Info` và `Hardware Info` sử dụng cú pháp `Key : Value` được đệm khoảng trắng, với khóa được căn trái theo cột cố định 10 ký tự. Các trường được thu thập gồm: `Username`, `PC Name`, `OS Version`, `HWID` (chuỗi machine-GUID của Windows đặt trong dấu ngoặc nhọn), `CPU`, `GPU`, `RAM` (có hậu tố GB), `Screen` (`WIDTHxHEIGHT`). Khối `Network` là một danh sách có thứ tự không có khóa, chứa dữ liệu tra cứu địa lý dựng sẵn (trạng thái, tên quốc gia, mã quốc gia ISO, mã vùng, tên vùng, thành phố, mã bưu điện, vĩ độ, kinh độ, múi giờ IANA, ISP, ASN và tên AS, địa chỉ IP công khai).

Nhãn tự gán `Rivas Stealer` đặt tên cho hồ sơ này, nhưng tính đến thời điểm tích hợp, chưa có bài viết tình báo đe dọa độc lập nào được chọn lọc hoặc từ cộng đồng xác lập được nguồn gốc payload. Cú pháp phần được trang trí bằng ký tự pipe và ngữ pháp trường theo khóa được đệm khoảng trắng không được ghi nhận trong bất kỳ họ mã độc chuẩn nào đã khảo sát. Việc quy kết họ mã độc được giữ nguyên theo nhãn tự gán của panel với độ tin cậy không xác định; @VidarTraffics là một nhà bán lại bộ tổng hợp log trên Telegram, đóng gói lại log từ nhiều công cụ xây dựng (builder) nền tảng khác nhau, do đó kênh phân phối được ghi nhận như bối cảnh quy kết chứ không phải nguồn gốc dòng dõi.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Observed self-label / Tên tự nhận quan sát được**
- Attribution confidence: **unknown**
- Aliases: `Rivas Stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| User and computer identity | Danh tính người dùng và máy tính |
| OS build and hardware inventory (CPU, GPU, RAM, display) | Thông tin bản dựng hệ điều hành và phần cứng (CPU, GPU, RAM, màn hình) |
| Windows machine-GUID HWID | HWID machine-GUID của Windows |
| Public-IP geolocation and ISP metadata | Dữ liệu định vị địa lý IP công khai và thông tin ISP |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the line-anchored `Rivas Stealer Report` self-label literal together with the
`---| User Info |---` pipe-decoration section header.
The self-label alone could appear in a threat-intel
report excerpt, and the pipe-decoration section syntax
alone is generic enough to appear in unrelated tools, so
both anchors together are required.

Canonical bracket-section families decline cleanly:
Redline / Lumma / Vidar / Rhadamanthys / Meduza / Acreed
use different field vocabularies without the pipe
decoration; Plutus / AMOS use flush `[SectionName]`
markers.

### Tiếng Việt

Việc lập dấu vân tay yêu cầu chuỗi nhãn tự gán `Rivas Stealer Report` được neo theo dòng cùng với tiêu đề phần trang trí bằng ký tự pipe `---| User Info |---`. Chỉ riêng nhãn tự gán có thể xuất hiện trong đoạn trích báo cáo tình báo đe dọa, và cú pháp phần trang trí bằng ký tự pipe cũng đủ chung chung để xuất hiện trong các công cụ không liên quan, do đó cần cả hai điểm neo cùng lúc.

Các họ mã độc dùng phần đóng khung bằng dấu ngoặc vuông chuẩn có thể loại trừ rõ ràng: Redline / Lumma / Vidar / Rhadamanthys / Meduza / Acreed sử dụng bộ từ vựng trường khác nhau mà không có trang trí bằng ký tự pipe; Plutus / AMOS sử dụng các dấu hiệu `[SectionName]` căn lề trái.

## Observed log variants

### `v_ac90f16710c4da2b1f6dfaffbb0491b8`

- Format ID: `rivas-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Rivas Stealer`
- Distribution channel: `@VidarTraffics`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ac90f16710c4da2b1f6dfaffbb0491b8/Information.txt)
- Sample SHA-256: `92e7c3a479d7fe01d616d4c14d64644b4bd693ca3f50c1248f8d919d2bf74c5a`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Rivas Stealer`, `Rivas Stealer Report`
- Field labels: `CPU`, `GPU`, `HWID`, `OS Version`, `PC Name`, `RAM`, `Screen`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
