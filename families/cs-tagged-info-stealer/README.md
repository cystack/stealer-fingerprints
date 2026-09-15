# CSTaggedInfoStealer

## Overview / Tổng quan

### English

CSTaggedInfoStealer is a CyStack-coined identifier for a
sectioned ``Information.txt`` panel observed inside the
``17-20 AUGUST - 23791 LOGS.part01.rar`` aggregator pack. The
panel uses ``- IP Info -`` / ``- PC Info -`` / ``- Other Info -`` / ``- Log Info -`` dash-bordered section headers, a
Redline-derivative body vocabulary (``FileLocation:``,
``Current Language:``, ``Is Elevated:``, ``HWID:`` in
22-character alphanumeric shape), Cthulhu-derived geo fields
(``Postal:``, ``ISP:`` with trailing ``- A<ASN>`` autonomous
system suffix), and a distinctive credential-categorization
block: ``Tags Passwords:`` with comma-separated category tags
(SOCIAL, CRYPTO, SENSITIVE), ``Tagged URLs:``, and ``Tagged Cookies:``.

The sectioned layout plus the tag-category block are
unattested in public reporting and community catalogues. The
categorization scheme resembles StealC panel-side markers
described in public ACR Stealer research, but the log-side
output shape does not match StealC's canonical ``Network Info:`` + ``System Summary:`` layout. Family attribution is
provisional pending a published mapping.

### Tiếng Việt

CSTaggedInfoStealer là định danh do CyStack đặt cho một bảng điều khiển ``Information.txt`` được chia theo phần, quan sát thấy bên trong gói tổng hợp ``17-20 AUGUST - 23791 LOGS.part01.rar``. Bảng điều khiển sử dụng các tiêu đề phần được viền bằng dấu gạch ngang ``- IP Info -`` / ``- PC Info -`` / ``- Other Info -`` / ``- Log Info -``, phần từ vựng nội dung mang tính phái sinh từ Redline (``FileLocation:``, ``Current Language:``, ``Is Elevated:``, ``HWID:`` theo cấu trúc dữ liệu chuỗi ký tự chữ-số 22 ký tự), các trường địa lý phái sinh từ Cthulhu (``Postal:``, ``ISP:`` kèm hậu tố hệ thống tự trị ``- A<ASN>``), và một khối phân loại thông tin xác thực đặc trưng: ``Tags Passwords:`` với các thẻ phân loại phân tách bằng dấu phẩy (SOCIAL, CRYPTO, SENSITIVE), ``Tagged URLs:``, và ``Tagged Cookies:``.

Bố cục chia theo phần cùng với khối thẻ phân loại chưa từng được ghi nhận trong các báo cáo công khai và danh mục cộng đồng. Cơ chế phân loại này có nét tương đồng với các dấu hiệu phía bảng điều khiển của StealC được mô tả trong nghiên cứu công khai về ACR Stealer, nhưng cấu trúc dữ liệu đầu ra phía nhật ký lại không khớp với bố cục chuẩn ``Network Info:`` + ``System Summary:`` của StealC. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có ánh xạ được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Dash-section Info-tagged stealer`, `- IP Info - / - PC Info - sectioned Information.txt`
- Variants observed: **1**
- CyStack observations represented: **30**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser passwords with SOCIAL / CRYPTO / SENSITIVE category tags | Mật khẩu trình duyệt kèm thẻ phân loại SOCIAL / CRYPTO / SENSITIVE |
| Browser cookies with per-URL / per-cookie tag lists | Cookie trình duyệt kèm danh sách thẻ theo từng URL / từng cookie |
| File grabs, wallets, credit cards, FTP/SSH credentials, and Discord tokens (per-count summary) | Dữ liệu thu thập từ tệp, ví tiền điện tử, thẻ tín dụng, thông tin xác thực FTP/SSH, và token Discord (tổng hợp theo số lượng) |
| Host fingerprint (CPU, GPU with embedded resolution, HWID, OS, current language, admin flag) | Dấu vết định danh máy (CPU, GPU kèm độ phân giải tích hợp, HWID, hệ điều hành, ngôn ngữ hiện tại, cờ quyền quản trị) |
| Geo enrichment (IP, country, city, postal code, ISP with autonomous system number, timezone offset) | Dữ liệu làm giàu địa lý (IP, quốc gia, thành phố, mã bưu điện, ISP kèm số hệ thống tự trị, độ lệch múi giờ) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored anchors: ``- IP Info -``, ``- PC Info -``, ``- Log Info -``, and ``Tags Passwords:``. The dash-bordered section headers plus the
categorization key together are unique across this catalog.
During triage, correlate the sample with sibling LOGS-pack
variants (John Doe Project, Slurm Cloud) shipping in the same
archive to identify shared operator infrastructure. The
Redline-derivative body vocabulary means the underlying
builder could be a Redline fork with an added categorization
panel layer, but no published mapping confirms this.

### Tiếng Việt

Việc nhận diện dấu hiệu yêu cầu bốn điểm neo theo dòng: ``- IP Info -``, ``- PC Info -``, ``- Log Info -``, và ``Tags Passwords:``. Các tiêu đề phần được viền bằng dấu gạch ngang cùng với khóa phân loại là sự kết hợp duy nhất trong danh mục này. Trong quá trình phân loại ban đầu, cần đối chiếu tương quan giữa mẫu này với các biến thể LOGS-pack liên quan (John Doe Project, Slurm Cloud) được đóng gói chung trong cùng kho lưu trữ nhằm xác định hạ tầng dùng chung của đối tượng vận hành. Phần từ vựng nội dung mang tính phái sinh từ Redline cho thấy bộ dựng (builder) nền tảng có thể là một bản fork của Redline được bổ sung thêm lớp bảng phân loại, tuy nhiên chưa có ánh xạ công bố nào xác nhận điều này.

## Observed log variants

### `v_d522c2ef9147f26c4d0f1a60ec97fcbd`

- Format ID: `cs-tagged-info-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **30**
- Representative sample: [open sample](samples/v_d522c2ef9147f26c4d0f1a60ec97fcbd/sample.txt)
- Sample SHA-256: `965cb66d0e3e1f37e871eb94de9df4ebc4aae708f37f253a9fe910aa72353d43`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `- IP Info -`, `- Log Info -`, `- PC Info -`
- Field labels: `Tags Passwords`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- [CSJohnDoeProjectStealer](../cs-john-doe-project-stealer/)
- [CSSlurmCloudStealer](../cs-slurm-cloud-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
