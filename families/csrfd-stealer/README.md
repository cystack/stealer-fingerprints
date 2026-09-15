# CSRFDStealer

## Overview / Tổng quan

### English

CSRFDStealer is a CyStack-coined identifier for an
emoji-prefixed `FileGrabber/UserInformation.txt` shape
distributed through the @BRADMAX_CLOUD redistributor
portfolio. The file opens with a canonical `<================[ User Info ]>================>` section header followed by an
operator tag literal `<================RFD================>`
on the next line, then a blank line, then a 17-line
emoji-prefixed `<emoji> <Key>: <Value>` field block.

Field values place the runtime in JavaScript / Node.js: `Type: Windows_NT` is `os.type()`, `Arch: x64` is `os.arch()`,
`Release: 10.0.19044` is `os.release()`, `Processors: <count>`
is `os.cpus().length`. The label flip between `Host name`
(which carries the canonical computer name from
`os.hostname()`) and `PC Name` (which carries the Windows
account name from `process.env.USERNAME`) is consistent with a
NodeJS or Electron stealer template. The body matches
structural features of the documented NodeJS / Electron
stealer category (NOVABLIGHT, Celestial Stealer, Mercurial),
but no public reporting quotes a field-layout match for this
exact layout, so family attribution is provisional.

### Tiếng Việt

CSRFDStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu `FileGrabber/UserInformation.txt` có tiền tố emoji, được phân phối thông qua danh mục các kênh phân phối lại @BRADMAX_CLOUD. Tệp mở đầu bằng một tiêu đề phần `<================[ User Info ]>================>` chuẩn, tiếp theo là dòng chứa nhãn đối tượng vận hành literal `<================RFD================>` ở dòng kế tiếp, sau đó là một dòng trống, rồi đến khối trường dữ liệu `<emoji> <Key>: <Value>` gồm 17 dòng có tiền tố emoji.

Giá trị các trường cho thấy môi trường thực thi là JavaScript / Node.js: `Type: Windows_NT` là `os.type()`, `Arch: x64` là `os.arch()`, `Release: 10.0.19044` là `os.release()`, `Processors: <count>` là `os.cpus().length`. Sự hoán đổi nhãn giữa `Host name` (mang tên máy chuẩn từ `os.hostname()`) và `PC Name` (mang tên tài khoản Windows từ `process.env.USERNAME`) phù hợp với mẫu mã độc đánh cắp thông tin dạng NodeJS hoặc Electron. Phần thân tệp khớp với các đặc điểm cấu trúc của nhóm mã độc đánh cắp thông tin NodeJS / Electron đã được ghi nhận (NOVABLIGHT, Celestial Stealer, Mercurial), nhưng chưa có báo cáo công khai nào trích dẫn sự trùng khớp bố cục trường dữ liệu chính xác với cấu trúc này, do đó việc quy kết họ mã độc vẫn mang tính tạm thời.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `RFD banner UserInformation.txt`, `@BRADMAX_CLOUD FileGrabber sample`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, RAM, Windows version, uptime) | Dấu vết phần cứng máy và hệ điều hành (CPU, RAM, phiên bản Windows, thời gian hoạt động) |
| AppData and Temp paths for downstream credential harvesting | Đường dẫn AppData và Temp phục vụ thu thập thông tin xác thực ở giai đoạn sau |
| Account username and domain identity | Tên tài khoản người dùng và danh tính miền |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the
`<================RFD================>` operator tag and the
`<================[ User Info ]>` section header. Either
literal alone could plausibly appear in unrelated content (a
public writeup quoting only one of the two banners, a generic
`User Info` heading in operator documentation), so both
anchors are required. The emoji prefix set is distinctive but
not load-bearing for the fingerprint. During triage, treat the
channel attribution as the parent-folder shape
(`[<CC>]@BRADMAX_CLOUD- (<NN>)`) evidence; the file body
itself carries no IP, country, or log-time field, so the IOC
surfaces only device-level metadata. Companion files in the
victim folder carry the harvested credentials and cookies.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu phải có đồng thời nhãn đối tượng vận hành `<================RFD================>` và tiêu đề phần `<================[ User Info ]>`. Nếu chỉ có một trong hai literal này thì vẫn có khả năng xuất hiện trong nội dung không liên quan (một bài viết công khai chỉ trích dẫn một trong hai banner, hoặc một tiêu đề `User Info` chung chung trong tài liệu của đối tượng vận hành), vì vậy cần cả hai mốc nhận diện này. Tập tiền tố emoji có tính đặc trưng nhưng không phải yếu tố then chốt để nhận diện dấu vết. Trong quá trình phân loại ban đầu, hãy xem việc quy kết kênh phân phối là bằng chứng dựa trên cấu trúc dữ liệu thư mục cha (`[<CC>]@BRADMAX_CLOUD- (<NN>)`); bản thân phần thân tệp không chứa trường IP, quốc gia hay thời gian ghi log, do đó chỉ báo này chỉ thể hiện siêu dữ liệu ở cấp độ thiết bị. Các tệp liên quan trong thư mục nạn nhân mang theo thông tin xác thực và cookie đã bị đánh cắp.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [Mars Stealer](../mars-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [CSBradMaxCloudBannerOnlyStealer](../cs-brad-max-cloud-banner-only-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
