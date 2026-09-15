# CSBrowserProfileStealer

## Overview / Tổng quan

### English

CSBrowserProfileStealer is a CyStack-coined identifier for a
`Logins.txt` cred-file shape observed inside `@BRADMAX 14000 MARCH.part01.rar` Telegram aggregator packs at
`[<CC>]<IPv4>/Logins.txt` victim folders (e.g. `@BRADMAX 14000 MARCH/[CO]<IPv4>/Logins.txt`). The body ships 4-line
`Key: Value` blocks in the sequence `URL:` / `Username:` /
`Password:` / `Browser:` separated by `===============` (15+
equals signs).

The distinctive `Browser:` fourth label carries a concatenated
`<UPPERCASE-BROWSER-NAME>_<Profile>` value (e.g.
`CHROME_Default`, `EDGE_Profile 1`, `FIREFOX_ default-release`). The underscore-joined form marks this shape
apart from every sibling 4-line cred-block convention in the
registry: Redline uses `Application:` as the fourth label,
`CSAppProfileStealer` uses `Application: <Browser> [Profile: <name>]` bracket annotation, `CSLoginsPathStealer` uses
`Application: Browser/Logins/<Browser>_<Profile>[<hex>].txt`
path notation, and `CSUrlUserPassFromStealer` uses short
labels plus `From: <BareBrowserName>`.

Family attribution is provisional pending a published
threat-intel mapping for this exact serialisation. Public
reporting and community catalogues do not attest a family
emitting this exact `Browser: <NAME>_<Profile>` fourth-label
shape.

### Tiếng Việt

CSBrowserProfileStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu tệp thông tin xác thực `Logins.txt` được quan sát bên trong các gói tổng hợp Telegram `@BRADMAX 14000 MARCH.part01.rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/Logins.txt` (ví dụ: `@BRADMAX 14000 MARCH/[CO]<IPv4>/Logins.txt`). Phần nội dung chứa các khối 4 dòng `Key: Value` theo thứ tự `URL:` / `Username:` / `Password:` / `Browser:` được ngăn cách bởi `===============` (15 dấu bằng trở lên).

Nhãn thứ tư đặc trưng `Browser:` mang một giá trị `<UPPERCASE-BROWSER-NAME>_<Profile>` được nối liền (ví dụ: `CHROME_Default`, `EDGE_Profile 1`, `FIREFOX_ default-release`). Dạng nối bằng gạch dưới này giúp phân biệt cấu trúc dữ liệu này với mọi quy ước khối thông tin xác thực 4 dòng liên quan khác trong hệ thống danh mục: Redline dùng `Application:` làm nhãn thứ tư, `CSAppProfileStealer` dùng chú thích ngoặc `Application: <Browser> [Profile: <name>]`, `CSLoginsPathStealer` dùng ký hiệu đường dẫn `Application: Browser/Logins/<Browser>_<Profile>[<hex>].txt`, và `CSUrlUserPassFromStealer` dùng các nhãn ngắn kèm `From: <BareBrowserName>`.

Việc quy kết họ mã độc vẫn mang tính tạm thời do chưa có tài liệu phân tích tình báo mối đe dọa nào được công bố ánh xạ chính xác với cách tuần tự hóa này. Các báo cáo công khai và danh mục cộng đồng chưa xác nhận có họ mã độc nào tạo dữ liệu đầu ra với cấu trúc nhãn thứ tư `Browser: <NAME>_<Profile>` chính xác như vậy.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Logins.txt 4-line Browser-key panel`, `URL/Username/Password/Browser_Profile cred block`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (URL, username, password) | Thông tin xác thực đã lưu trong trình duyệt (URL, tên người dùng, mật khẩu) |
| Browser name plus profile identifier per entry | Tên trình duyệt kèm định danh hồ sơ (profile) cho mỗi mục |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ 4-line blocks in the `URL:` /
`Username:` / `Password:` / `Browser: <NAME>_<...>` shape
where the `Browser:` value opens with an uppercase
browser-name prefix from a curated list (CHROME / EDGE /
FIREFOX / BRAVE / OPERA / VIVALDI / YANDEX / MOZILLA /
CHROMIUM / SAFARI / TOR / IE). Gating on the known-browser prefix excludes arbitrary text that
happens to include a `Browser:` line. During triage,
the `<Browser>_<Profile>` value is the per-entry source-profile hint that lets analysts pivot to the specific
Chromium Login Data / Firefox signons SQLite file the
stealer read from.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu 3 khối 4 dòng trở lên theo cấu trúc `URL:` / `Username:` / `Password:` / `Browser: <NAME>_<...>`, trong đó giá trị `Browser:` bắt đầu bằng một tiền tố tên trình duyệt viết hoa nằm trong danh sách đã được chọn lọc (CHROME / EDGE / FIREFOX / BRAVE / OPERA / VIVALDI / YANDEX / MOZILLA / CHROMIUM / SAFARI / TOR / IE). Việc giới hạn theo tiền tố trình duyệt đã biết giúp loại trừ các đoạn văn bản tùy ý vô tình chứa một dòng `Browser:`. Trong quá trình phân loại ban đầu, giá trị `<Browser>_<Profile>` là gợi ý hồ sơ nguồn cho từng mục, giúp nhà phân tích lần ra tệp SQLite Login Data của Chromium hoặc signons của Firefox cụ thể mà mã độc đánh cắp thông tin đã đọc từ đó.

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
- [CSLoginsPathStealer](../cs-logins-path-stealer/)
- [CSUrlUserPassFromStealer](../cs-url-user-pass-from-stealer/)
- [Redline](../redline/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
