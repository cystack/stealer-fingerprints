# CSUrlUserPassFromStealer

## Overview / Tổng quan

### English

CSUrlUserPassFromStealer is a CyStack-coined identifier for a
4-line `URL / User / Pass / From` cred-file shape distributed
inside `202605080230_@BRADMAX 11700 MAY.part1.rar` aggregator
packs at `[<ISO2>]<IPv4>/Passwords.txt` victim folders. The
folder ships a minimal 2-file layout (`Bookmarks.txt` +
`Passwords.txt`) with no companion system-info file. The cred
file body holds short-label `URL: <url>`, `User: <username>`,
`Pass: <password>`, `From: <Browser>` lines, one block per
entry; observed samples ship a single 83-byte block per
victim.

The short labels (`URL` / `User` / `Pass`) distinguish this
format from sibling 4-line shapes: Redline,
`CSAppProfileStealer`, `CSDateCreatedStealer`,
`CSLoginsPathStealer`, and `CSDbscProtectedStealer` all use
the long-form `URL: / Username: / Password:` labels. The
`From: <Browser>` fourth label, carrying a bare browser-name
word, replaces the `Application:` line those sibling shapes
use. A public Zaraza Bot writeup documents an Edge-targeting
Telegram-distributed builder that harvests `origin_url` /
`username_value` / `password_value` to an `output.txt` cred
file, but does not publish the exact serialised label
sequence, so attribution stays CyStack-coined pending a
published mapping for this exact shape.

### Tiếng Việt

CSUrlUserPassFromStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu tệp thông tin xác thực (cred-file) 4 dòng `URL / User / Pass / From` được phân phối bên trong các gói tổng hợp `202605080230_@BRADMAX 11700 MAY.part1.rar` tại các thư mục nạn nhân `[<ISO2>]<IPv4>/Passwords.txt`. Thư mục này có bố cục tối giản gồm 2 tệp (`Bookmarks.txt` + `Passwords.txt`), không kèm tệp thông tin hệ thống đi cùng. Phần nội dung tệp thông tin xác thực chứa các dòng nhãn ngắn `URL: <url>`, `User: <username>`, `Pass: <password>`, `From: <Browser>`, mỗi khối tương ứng với một mục dữ liệu; các mẫu quan sát được cho thấy chỉ có một khối duy nhất dài 83 byte cho mỗi nạn nhân.

Các nhãn ngắn (`URL` / `User` / `Pass`) giúp phân biệt cấu trúc dữ liệu này với các cấu trúc dữ liệu 4 dòng liên quan khác: Redline, `CSAppProfileStealer`, `CSDateCreatedStealer`, `CSLoginsPathStealer` và `CSDbscProtectedStealer` đều sử dụng các nhãn dạng đầy đủ `URL: / Username: / Password:`. Nhãn thứ tư `From: <Browser>`, mang một từ tên trình duyệt trần, thay thế cho dòng `Application:` mà các cấu trúc dữ liệu liên quan kia sử dụng. Một bài viết công khai về Zaraza Bot mô tả một trình tạo mã độc (builder) nhắm vào Edge, phân phối qua Telegram, thu thập `origin_url` / `username_value` / `password_value` vào một tệp thông tin xác thực `output.txt`, nhưng không công bố chính xác trình tự nhãn được tuần tự hóa, do đó việc quy kết vẫn do CyStack tự đặt cho đến khi có ánh xạ được công bố khớp với cấu trúc dữ liệu chính xác này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Passwords.txt short-label URL/User/Pass/From shape`, `Bookmarks-plus-Passwords minimal 2-file BRADMAX victim layout`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (URL, username, password) | Thông tin xác thực được trình duyệt lưu (URL, tên đăng nhập, mật khẩu) |
| Source browser identity (`From:` line, bare browser-name word) | Danh tính trình duyệt nguồn (dòng `From:`, từ tên trình duyệt trần) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires a 4-line `URL: / User: / Pass: / From: <Browser>` block where the `From:` line carries a known
browser-name word (Chrome, Edge, Firefox, Brave, Opera,
Vivaldi, Yandex, Mozilla, Chromium, Safari, Tor, Internet
Explorer, IE). One block is sufficient: the minimal observed
cred file is a single 83-byte record, and the short-label
sequence plus the browser-name gate is specific enough that
requiring 3+ blocks would miss the minimal variant without
adding false-positive protection. During triage, treat the
family attribution as unknown: the underlying builder that
emits this exact short-label layout is not pinned by any
public reporting.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu một khối `URL: / User: / Pass: / From: <Browser>` 4 dòng, trong đó dòng `From:` mang một từ tên trình duyệt đã biết (Chrome, Edge, Firefox, Brave, Opera, Vivaldi, Yandex, Mozilla, Chromium, Safari, Tor, Internet Explorer, IE). Một khối là đủ: tệp thông tin xác thực tối giản quan sát được chỉ là một bản ghi duy nhất dài 83 byte, và trình tự nhãn ngắn kết hợp với điều kiện lọc theo tên trình duyệt đủ đặc thù để việc yêu cầu từ 3 khối trở lên sẽ bỏ sót biến thể tối giản mà không giúp giảm thêm dương tính giả. Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là chưa xác định: trình tạo mã độc (builder) gốc tạo ra đúng bố cục nhãn ngắn này chưa được xác định cụ thể bởi bất kỳ báo cáo công khai nào.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSSoftHostStealer](../cs-soft-host-stealer/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDbscProtectedStealer](../cs-dbsc-protected-stealer/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
