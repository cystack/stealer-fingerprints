# CryptBot

## Overview / Tổng quan

### English

CryptBot is a Delphi-built info-stealer first publicly
documented in December 2019. The family is best known for its
`_Information.txt` victim summary plus sibling files
`_AllPasswords_list.txt`, `_AllCookies_list.txt`,
`_AllForms_list.txt`, `_AllWallets_list.txt`, and
`Screen.png`, all written into a per-victim folder under
`%TEMP%`. Multiple builder versions have been observed (v2.0,
v3.0, v3.1 per public analyses); the field set in the summary
file is stable across versions, with the v3.x line moving the
qualifier on `UserName` and `Data` fields from parentheses to
a brackets variant in some rebrand samples.

CryptBot distribution leans on SEO-poisoned cracked-software
landing pages and bundled freeware installers. The malware
writes the victim summary to disk, packs it with the harvested
credential / cookie / wallet files into a ZIP, and POSTs the
archive to a hard-coded C2 gate.

### Tiếng Việt

CryptBot là mã độc đánh cắp thông tin viết bằng Delphi, được ghi nhận công khai lần đầu vào tháng 12 năm 2019. Họ mã độc này được biết đến nhiều nhất với bản tóm tắt nạn nhân `_Information.txt` cùng các tệp liên quan `_AllPasswords_list.txt`, `_AllCookies_list.txt`, `_AllForms_list.txt`, `_AllWallets_list.txt`, và `Screen.png`, tất cả được ghi vào một thư mục theo từng nạn nhân dưới `%TEMP%`. Nhiều phiên bản trình dựng đã được ghi nhận (v2.0, v3.0, v3.1 theo các phân tích công khai); tập hợp trường trong tệp tóm tắt ổn định qua các phiên bản, với dòng v3.x chuyển bộ định danh trên các trường `UserName` và `Data` từ dấu ngoặc đơn sang biến thể dấu ngoặc vuông trong một số mẫu đổi thương hiệu.

Việc phát tán CryptBot dựa vào các trang đích phần mềm crack bị đầu độc SEO và các trình cài đặt phần mềm miễn phí đi kèm. Mã độc ghi bản tóm tắt nạn nhân ra đĩa, đóng gói nó cùng các tệp thông tin xác thực / cookie / ví đã thu thập được vào một tệp ZIP, rồi POST tệp nén đó đến một điểm tiếp nhận C2 được ghi cố định.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `CryptBot Stealer`, `Crypt Bot`
- Variants observed: **2**
- CyStack observations represented: **5**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chromium and Gecko) | Thông tin xác thực được trình duyệt lưu (Chromium và Gecko) |
| Browser cookies and autofill data | Cookie và dữ liệu tự động điền của trình duyệt |
| Cryptocurrency wallet files and browser extensions | Tệp ví tiền mã hóa và tiện ích mở rộng trình duyệt |
| Saved form data | Dữ liệu biểu mẫu đã lưu |
| System hardware and locale inventory | Kiểm kê phần cứng hệ thống và ngôn ngữ/vùng |
| Screenshot of the desktop | Ảnh chụp màn hình desktop |

## Detection notes / Ghi chú nhận diện

### English

The `_Information.txt` filename is the strongest folder-level signal: paired with the `_AllPasswords_list.txt` /
`_AllCookies_list.txt` / `_AllForms_list.txt` sibling
set, no other family in this catalog uses this exact
naming. Content-level fingerprint anchors on the
bracket-suffixed `UserName [ComputerName]:` and
`Data [Time]:` keys plus `Keyboard Languages:`; the
no-space `UserName` spelling distinguishes CryptBot from
Vidar / StealC / Mars (which use `User Name:`).

### Tiếng Việt

Tên tệp `_Information.txt` là tín hiệu cấp thư mục mạnh nhất: kết hợp với bộ tệp liên quan `_AllPasswords_list.txt` / `_AllCookies_list.txt` / `_AllForms_list.txt`, không có họ mã độc nào khác trong danh mục này sử dụng đúng cách đặt tên này. Dấu hiệu nhận diện ở cấp nội dung dựa trên các khóa `UserName [ComputerName]:` và `Data [Time]:` có hậu tố ngoặc vuông cùng `Keyboard Languages:`; cách viết `UserName` không có khoảng trắng phân biệt CryptBot với Vidar / StealC / Mars (vốn dùng `User Name:`).

## Observed log variants

### `v_ab2260210a1222f2c7c15c25c8251227`

- Format ID: `cryptbot`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `bracket-user-host`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ab2260210a1222f2c7c15c25c8251227/sample.txt)
- Sample SHA-256: `090c3bba8e01bf881bd061fb18d3c0a591a57433376c133a38838a3bb6eec86d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data [Time]:`, `UserName [`
- Field labels: `Installed software`, `Keyboard Languages`

### `v_cbcdfdbccf53d49530cd7b152470af8a`

- Format ID: `cryptbot`
- Observed filenames: `_Information.txt`
- Panel brand: `Ottoman`
- Distribution channel: `@OttoSup`
- Attribution confidence: **high**
- Layout: `bracket-user-host`
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_cbcdfdbccf53d49530cd7b152470af8a/sample.txt)
- Sample SHA-256: `967be06238c92a4ffb1e3b21a0ce1d53ba66ecb9ccf7dc9f921eab0e605576e8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data [Time]:`, `Installed software:`, `UserName [`
- Field labels: `Keyboard Languages`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |

## Related catalog profiles

- None recorded.

## Sources

- <https://research.openanalysis.net/cryptbot/botnet/yara/config/2024/12/06/cryptbot2.html>
- <https://fr3d.hk/blog/cryptbot-too-good-to-be-true>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.cryptbot>
- <https://any.run/malware-trends/cryptbot/>
- <https://www.deepinstinct.com/blog/cryptbot-how-free-becomes-a-high-price-to-pay>

Machine-readable record: [family.json](family.json)
