# CSDbscProtectedStealer

## Overview / Tổng quan

### English

CSDbscProtectedStealer is a CyStack-coined identifier for a
3-line `URL / Username / Password` cred-file shape where the
`Password:` value carries Chrome 146+'s `DBSC-Protected: Cannot decrypt without server key` placeholder or the generic
`Unable to decrypt` fallback. These placeholders are Chrome's
Device-Bound-Session- Credentials and app-bound-encryption
failure markers that the stealer's panel preserves when its
decryption bypass returns the encrypted blob but the
underlying session key is hardware-isolated and not
exportable.

Distributed inside `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` aggregator packs at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/All_Passwords.txt` victim folders that ship no
companion system-info file. Records are 3-line blocks
separated by a blank line; the format lacks the 4th
`Application:` line that sibling
`URL/Username/Password/Application` shapes carry
(`CSAppProfileStealer`, `CSDateCreatedStealer`,
`CSLoginsPathStealer`).

The DBSC-Protected literal is publicly documented as Chrome's
hardware-isolated session-key protection that defeats stealer
decryption. Family attribution is provisional pending a
published threat-intel mapping for the underlying stealer
family that emits this 3-line layout.

### Tiếng Việt

CSDbscProtectedStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu tệp thông tin xác thực (cred-file) gồm 3 dòng `URL / Username / Password`, trong đó giá trị `Password:` chứa placeholder `DBSC-Protected: Cannot decrypt without server key` của Chrome 146+ hoặc placeholder dự phòng chung `Unable to decrypt`. Đây là các dấu hiệu báo lỗi Device-Bound-Session-Credentials và app-bound-encryption của Chrome mà bảng điều khiển của mã độc đánh cắp thông tin vẫn giữ lại khi cơ chế vượt qua giải mã của nó trả về khối dữ liệu đã mã hóa nhưng khóa phiên bên dưới lại bị cô lập theo phần cứng và không thể xuất ra được.

Được phân phối bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` tại các thư mục nạn nhân `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/All_Passwords.txt` không kèm theo tệp thông tin hệ thống đi cùng. Các bản ghi là các khối 3 dòng được ngăn cách bằng một dòng trống; định dạng này thiếu dòng `Application:` thứ 4 mà các cấu trúc dữ liệu `URL/Username/Password/Application` liên quan có (`CSAppProfileStealer`, `CSDateCreatedStealer`, `CSLoginsPathStealer`).

Literal DBSC-Protected đã được ghi nhận công khai là cơ chế bảo vệ khóa phiên cô lập theo phần cứng của Chrome giúp vô hiệu hóa việc giải mã của mã độc đánh cắp thông tin. Việc quy kết họ mã độc vẫn mang tính tạm thời, chờ có bản đồ tình báo mối đe dọa được công bố cho họ mã độc đánh cắp thông tin cơ bản tạo ra bố cục 3 dòng này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 3-line URL/Username/Password Chrome-DBSC log`, `Chrome 146+ DBSC-Protected placeholder cred block`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials from Chromium login-data SQLite | Thông tin xác thực được trình duyệt lưu trữ từ cơ sở dữ liệu SQLite login-data của Chromium |
| Chrome 146+ DBSC-protected entries (panel preserves the failure marker) | Các mục được bảo vệ bởi DBSC của Chrome 146+ (bảng điều khiển giữ lại dấu hiệu báo lỗi) |
| Chrome app-bound-encryption entries the stealer could not decrypt | Các mục app-bound-encryption của Chrome mà mã độc đánh cắp thông tin không thể giải mã được |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires either the literal
`DBSC-Protected: Cannot decrypt without server key`
substring OR the generic Chromium `Unable to decrypt`
failure-marker substring, AND 3+ 3-line
`URL: / Username: / Password:` blocks, AND no
`Application:` substring anywhere in the body. The
`Application:` exclusion distinguishes 4-line
`URL/Username/Password/Application` dumps whose first
three lines also satisfy the 3-line block regex - those shapes have separate catalog profiles
(CSAppProfileStealer, CSDateCreatedStealer,
CSLoginsPathStealer, and Redline). During triage, this label marks a
Chromium victim whose passwords were partially or fully
protected by app-bound encryption or Chrome 146+
hardware-bound session keys: the stealer captured login-data rows but could not decrypt some or all of the
actual passwords. The underlying stealer family is
unknown.

### Tiếng Việt

Việc nhận diện dấu hiệu đặc trưng yêu cầu chuỗi con literal `DBSC-Protected: Cannot decrypt without server key` HOẶC chuỗi con dấu hiệu báo lỗi chung của Chromium `Unable to decrypt`, VÀ có từ 3 khối 3 dòng `URL: / Username: / Password:` trở lên, VÀ không có chuỗi con `Application:` ở bất kỳ đâu trong phần nội dung. Điều kiện loại trừ `Application:` giúp phân biệt các bản dump `URL/Username/Password/Application` 4 dòng mà ba dòng đầu tiên cũng thỏa mãn biểu thức chính quy khối 3 dòng - các cấu trúc dữ liệu đó có hồ sơ phân loại riêng (CSAppProfileStealer, CSDateCreatedStealer, CSLoginsPathStealer và Redline). Trong quá trình phân loại ban đầu, nhãn này đánh dấu một nạn nhân Chromium có mật khẩu được bảo vệ một phần hoặc toàn bộ bởi app-bound encryption hoặc khóa phiên gắn với phần cứng của Chrome 146+: mã độc đánh cắp thông tin đã lấy được các dòng dữ liệu login-data nhưng không thể giải mã được một phần hoặc toàn bộ mật khẩu thực tế. Họ mã độc đánh cắp thông tin cơ bản vẫn chưa xác định được.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)
- [CSLoginsPathStealer](../cs-logins-path-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
