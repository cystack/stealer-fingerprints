# CSApplicationsDiscordStealer

## Overview / Tổng quan

### English

CSApplicationsDiscordStealer is a CyStack-coined identifier
for a per-victim folder shipping a single `Applications/`
subdirectory with per-application token harvests inside a
`[<ISO2>]<IPv4>` parent folder. Each app under `Applications/`
carries its own `Tokens.txt` file (e.g.
`Applications/Discord/Tokens.txt` for Discord auth tokens).
The Discord file body carries one token per line: the leading
base64 segment encodes the user's Discord snowflake ID,
followed by dotted timestamp / signature parts (3-part form
for standard auth tokens, 2-part for refresh / MFA tokens).

Observed inside `MAY 02 - 8230 LOGS` aggregator packs (the `LOGS` sibling of `LOGS2` also associated with CSCookiesSoftStealer). Same `[<ISO2>]<IPv4>` parent-folder
convention, but a different categorical subdir name
(`Applications/` vs `Soft/`) and a different per-app harvest
convention (Discord auth tokens vs Steam JWT sessions). Family
attribution is provisional pending a published mapping for
this exact layout.

### Tiếng Việt

CSApplicationsDiscordStealer là một định danh do CyStack đặt tên cho một bố cục thư mục theo từng nạn nhân chứa một thư mục con `Applications/` duy nhất với các bản thu thập mã thông báo theo từng ứng dụng bên trong một thư mục mẹ `[<ISO2>]<IPv4>`. Mỗi ứng dụng dưới `Applications/` mang tệp `Tokens.txt` riêng (ví dụ: `Applications/Discord/Tokens.txt` cho mã thông báo xác thực Discord). Nội dung tệp Discord chứa một mã thông báo mỗi dòng: đoạn base64 đứng đầu mã hóa Discord snowflake ID của người dùng, theo sau là các phần dấu chấm thời gian / chữ ký (dạng 3 phần cho mã thông báo xác thực tiêu chuẩn, dạng 2 phần cho mã thông báo làm mới / MFA).

Quan sát được bên trong các gói tổng hợp `MAY 02 - 8230 LOGS` (là dạng liên quan `LOGS` của `LOGS2` cũng liên quan đến CSCookiesSoftStealer). Cùng quy ước thư mục mẹ `[<ISO2>]<IPv4>`, nhưng khác tên thư mục con phân loại (`Applications/` so với `Soft/`) và khác quy ước thu thập theo từng ứng dụng (mã thông báo xác thực Discord so với phiên JWT của Steam). Việc quy kết họ mã độc là tạm thời, chờ có ánh xạ công khai cho đúng bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Discord auth tokens (full sessions, refresh tokens, MFA tokens) | Mã thông báo xác thực Discord (phiên đầy đủ, mã thông báo làm mới, mã thông báo MFA) |
| Other Chromium-Electron desktop app session tokens (potentially shipped under `Applications/<App>/Tokens.txt`) | Mã thông báo phiên của các ứng dụng desktop Chromium-Electron khác (có thể được gửi dưới `Applications/<App>/Tokens.txt`) |

## Detection notes / Ghi chú nhận diện

### English

The `[<ISO2>]<IPv4>` parent name plus the strict
`{Applications, ""}` root subset plus the
`Applications/<NonEmpty>/Tokens.txt` cred-file path
pattern is the fingerprint. Disambiguates from
CSCookiesSoftStealer via the categorical-subdir name
(`Applications/` vs `Soft/`) and from
CSDiscordDataTokensBundle (which ships a verbatim
LevelDB binary blob under `DiscordData/tokens.txt`).
Decode each token's leading base64 segment with a
standard base64 decoder to recover the victim's
Discord snowflake ID for cluster tracking.

### Tiếng Việt

Tên thư mục mẹ `[<ISO2>]<IPv4>` cùng với tập con nghiêm ngặt `{Applications, ""}` ở gốc và mẫu đường dẫn tệp thông tin xác thực `Applications/<NonEmpty>/Tokens.txt` là dấu hiệu nhận diện. Phân biệt với CSCookiesSoftStealer qua tên thư mục con phân loại (`Applications/` so với `Soft/`) và với CSDiscordDataTokensBundle (vốn gửi một khối dữ liệu nhị phân LevelDB nguyên văn dưới `DiscordData/tokens.txt`). Giải mã đoạn base64 đứng đầu của mỗi mã thông báo bằng bộ giải mã base64 tiêu chuẩn để khôi phục Discord snowflake ID của nạn nhân phục vụ theo dõi theo cụm.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1528](https://attack.mitre.org/techniques/T1528/) | Steal Application Access Token | Đánh cắp token truy cập ứng dụng |
| [T1550.001](https://attack.mitre.org/techniques/T1550/001/) | Use Alternate Authentication Material: Application Access Token | Sử dụng dữ liệu xác thực thay thế: token truy cập ứng dụng |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |

## Related catalog profiles

- [CSCookiesSoftStealer](../cs-cookies-soft-stealer/)
- [CSDiscordDataTokensStealer](../cs-discord-data-tokens-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
