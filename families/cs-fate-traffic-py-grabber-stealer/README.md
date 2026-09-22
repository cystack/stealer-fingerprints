# CSFateTrafficPyGrabberStealer

## Overview / Tổng quan

### English

CSFateTrafficPyGrabberStealer is a CyStack-coined
identifier for a Python-based `information.txt` grabber
body redistributed inside `@FATETRAFFIC` aggregator packs
alongside the sibling `CSFateTrafficInfoStealer`
Redline-shape body. The victim folder shape mirrors the
sibling profile
(`[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/`) but the
per-victim system-info file is named `information.txt`
(lowercase) and carries a bare 11-line `Key: Value` block
with a distinct Python-grabber field vocabulary rather
than the Redline-shape verbose keys.

Distinguishing observable features:

- `Processor:` carries the verbatim output of Python's
  `platform.processor()` on Windows (`AMD64 Family <n> Model <n> Stepping <n>, <vendor>` shape). Compiled
  stealers (Redline, Lumma, Vidar, Stealc) enumerate CPUs
  via WMI and emit either the branded model string or a
  `Win32_Processor.Name` WMI value, never the raw
  Family/Model/Stepping/Vendor tuple.
- `Architecture:` field emits Python's `platform.machine()`
  value (`AMD64` / `x86` / `ARM64`). No compiled-stealer
  body emits this field name.
- `Public IP:` and `Local IP:` distinguish network-scope of
  the captured address; Python grabbers routinely combine
  a public-IP GeoIP lookup with `socket.gethostbyname (socket.gethostname())` local resolution.
- `Country: <Name> (<ISO2>)` parenthesised ISO alpha-2
  form is the response shape of `ipapi.co` and
  `ip-api.com` GeoIP APIs that Python grabbers wrap.
- `Drives:` comma-separated single-line drive list is the
  `os.listdir("//")`-plus-`os.path.exists` scan pattern.
- `Time:` `YYYY-MM-DD HH:MM:SS` ISO wall-clock is
  `datetime.now().strftime("%Y-%m-%d %H:%M:%S")`.
- No banner, no watermark, no Redline-shape `Operation System:` typo, no Lumma dash-prefix, no Vidar
  `[Hardware]` section.

The Python-grabber body shape has structural similarity
to multiple documented Python-based info-stealer families
(Blank Grabber and forks per ANY.RUN and Splunk; Inf0s3c
Stealer, XillenStealer, and Akira Stealer per CYFIRMA;
PXA Stealer per SentinelOne Labs) but no surveyed
curated CTI writeup quotes the exact field vocabulary
(`Architecture:` + `Public IP:` + `Local IP:` + `Drives:`
+ parenthesised-ISO `Country:`) this variant emits.
@FATETRAFFIC is documented by HEROIC and Brinztech as a
Telegram log-aggregator channel that resells mixed-source
stealer logs without naming underlying builders. Family
stays CyStack-coined with `@FATETRAFFIC` distribution
channel preserved as attribution context; rename the
profile if a published threat-intel mapping surfaces.

### Tiếng Việt

CSFateTrafficPyGrabberStealer là định danh do CyStack đặt cho một mô-đun thu thập tệp dựa trên Python `information.txt` được phân phối lại bên trong các gói tổng hợp `@FATETRAFFIC` cùng với dấu vết liên quan `CSFateTrafficInfoStealer` dạng Redline.

Cấu trúc thư mục nạn nhân phản chiếu hồ sơ liên quan (`[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/`) nhưng tệp thông tin hệ thống theo từng nạn nhân được đặt tên `information.txt` (chữ thường) và chứa một khối `Key: Value` trần 11 dòng với bộ từ vựng trường dữ liệu đặc trưng của mô-đun thu thập Python, thay vì các khóa dài dòng theo cấu trúc Redline.

Các đặc điểm quan sát được để phân biệt:

- `Processor:` chứa nguyên văn dữ liệu đầu ra của `platform.processor()` trong Python trên Windows (cấu trúc dữ liệu `AMD64 Family <n> Model <n> Stepping <n>, <vendor>`). Các mã độc đánh cắp thông tin dạng biên dịch (Redline, Lumma, Vidar, Stealc) liệt kê CPU qua WMI và tạo dữ liệu đầu ra là chuỗi tên model theo hãng hoặc giá trị WMI `Win32_Processor.Name`, không bao giờ là bộ giá trị thô Family/Model/Stepping/Vendor.
- Trường `Architecture:` tạo dữ liệu đầu ra là giá trị `platform.machine()` của Python (`AMD64` / `x86` / `ARM64`). Không có mã độc đánh cắp thông tin dạng biên dịch nào tạo dữ liệu đầu ra với tên trường này.
- `Public IP:` và `Local IP:` phân biệt phạm vi mạng của địa chỉ thu được; các mô-đun thu thập Python bằng Python thường kết hợp tra cứu GeoIP cho IP công khai với phân giải cục bộ `socket.gethostbyname (socket.gethostname())`.
- Cấu trúc `Country: <Name> (<ISO2>)` dạng mã ISO alpha-2 trong ngoặc là cấu trúc phản hồi của các API GeoIP `ipapi.co` và `ip-api.com` mà các mô-đun thu thập Python đóng gói lại.
- Danh sách ổ đĩa phân tách bằng dấu phẩy trên một dòng `Drives:` là mẫu quét kết hợp `os.listdir("//")` cộng `os.path.exists`.
- Đồng hồ hệ thống dạng ISO `Time:` `YYYY-MM-DD HH:MM:SS` là `datetime.now().strftime("%Y-%m-%d %H:%M:%S")`.
- Không có banner, không có watermark, không có lỗi chính tả `Operation System:` theo cấu trúc Redline, không có tiền tố dấu gạch ngang kiểu Lumma, không có mục `[Hardware]` kiểu Vidar.

Cấu trúc mô-đun thu thập Python này có nét tương đồng về mặt cấu trúc với nhiều họ mã độc đánh cắp thông tin dựa trên Python đã được tài liệu hóa (Blank Grabber và các bản fork theo ANY.RUN và Splunk; Inf0s3c Stealer, XillenStealer, và Akira Stealer theo CYFIRMA; PXA Stealer theo SentinelOne Labs) nhưng không có báo cáo CTI đã qua chọn lọc nào được khảo sát trích dẫn chính xác bộ từ vựng trường dữ liệu (`Architecture:` + `Public IP:` + `Local IP:` + `Drives:` + `Country:` dạng ISO trong ngoặc) mà biến thể này tạo ra.

@FATETRAFFIC được HEROIC và Brinztech ghi nhận là một kênh Telegram tổng hợp log chuyên bán lại các log mã độc đánh cắp thông tin từ nhiều nguồn khác nhau mà không nêu tên các công cụ xây dựng (builder) gốc. Họ mã độc vẫn giữ định danh do CyStack đặt, với kênh phân phối `@FATETRAFFIC` được bảo lưu như bối cảnh quy kết; hãy đổi tên hồ sơ này nếu xuất hiện một bản ánh xạ tình báo mối đe dọa đã được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@FATETRAFFIC + Python-grabber body`, `FateTraffic platform.processor variant`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host and user identity (PC name, user name) | Định danh máy và người dùng (tên PC, tên người dùng) |
| Public IP + private LAN IP address pair | Cặp địa chỉ IP công khai và IP LAN riêng |
| CPU architecture and processor family/model/stepping | Kiến trúc CPU và họ/model/stepping của bộ xử lý |
| Attached drive letter inventory | Danh mục các ký tự ổ đĩa được gắn kết |
| Public-IP geolocation (city, ISO-2 country) | Định vị địa lý theo IP công khai (thành phố, mã quốc gia ISO-2) |
| System wall-clock | Đồng hồ hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Detection requires the case-insensitive `fatetraffic`
self-watermark token in the `system_path` folder tree
together with four line-anchored Python-grabber markers:
`Architecture:` AND `Public IP:` AND `Local IP:` AND
`Drives:`. The four-anchor combination is unique to this
panel across the corpus - the sibling
`CSFateTrafficInfoStealer` profile emits none of these
four keys, and compiled-stealer profiles emit none of
them either. The path token contains the claim to files
demonstrably shipped by @FATETRAFFIC.

### Tiếng Việt

Việc nhận diện đòi hỏi mã watermark tự nhận dạng `fatetraffic` (không phân biệt chữ hoa/thường) trong cây thư mục `system_path` cùng với bốn dấu hiệu neo theo dòng đặc trưng của mô-đun thu thập Python: `Architecture:` AND `Public IP:` AND `Local IP:` AND `Drives:`. Sự kết hợp bốn dấu hiệu neo này là duy nhất đối với panel này trong toàn bộ kho dữ liệu - hồ sơ liên quan `CSFateTrafficInfoStealer` không tạo dữ liệu đầu ra với bất kỳ khóa nào trong bốn khóa này, và các hồ sơ mã độc đánh cắp thông tin dạng biên dịch cũng không tạo dữ liệu đầu ra với bất kỳ khóa nào trong số đó. Mã đường dẫn chứa bằng chứng liên kết tới các tệp được chứng minh là do @FATETRAFFIC phát tán.

## Observed log variants

### `v_a8fc0d5b5173e514b083362b604365d2`

- Format ID: `cs-fatetraffic-py-grabber-stealer`
- Observed filenames: `information.txt`
- Panel brand: -
- Distribution channel: `@FATETRAFFIC`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_a8fc0d5b5173e514b083362b604365d2/information.txt)
- Sample SHA-256: `d83cfb79145590e89c17b0bc72422343bfabe7818e636bdf48988950938285ac`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Architecture`, `City`, `Country`, `Drives`, `Local IP`, `OS`, `PC Name`, `Processor`, `Public IP`, `Time`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- [CSFateTrafficInfoStealer](../cs-fate-traffic-info-stealer/)
- [Blank Grabber](../blank-grabber/)

## Sources

- <https://heroic.com/darkhive-breaches/fatetraffic-tg-arhontcloud-uploaded-by-a-telegram-user/>
- <https://www.brinztech.com/breach-alerts/brinztech-alert-new-fatetraffic-stealer-log-dump-exposes-2070-credentials>
- <https://any.run/malware-trends/blankgrabber/>
- <https://www.cyfirma.com/research/unveiling-a-python-stealer-inf0s3c-stealer/>

Machine-readable record: [family.json](family.json)
