# Mars Stealer

## Overview / Tổng quan

### English

Mars Stealer is a Windows info-stealer first publicly tracked
in mid-2021. It is a fork of the older Oski Stealer code base
and harvests browser credentials, crypto wallets, MFA
extensions, and Telegram / Discord session data. The family is
documented in public malware analyses from 2022 onward,
including the March 2022 source-code-leak disclosure, and is
tracked under the canonical literal `win.mars_stealer`. The
source-code leak in March 2022 produced a wave of derivative
builders that ship the same panel-template vocabulary with
minor field-block restructures; downstream consumers see
Mars-lineage logs from the @bradmax_cloud and other
redistributor channels that resell builder output without
naming the specific fork.

The harvested log opens with an 11-field plain `Key: Value`
system block: `Country`, `IP`, `Time Zone`, a language
sub-block, `Processor`, `Installed RAM` (with the `Installed`
prefix), `OS` (formatted as `Windows <N> build <NNNNN> (64 Bit)`), `Video card` (space + lowercase `card`), and `Display Resolution` (as `WxH`). The native Mars language sub-block has
two fields (`Display Language:` plus `Keyboard Languages:`)
per public analyses; post-leak forks have been observed
restructuring the sub-block (for example the three-field
`System Language` / `User Language` / `Keyboard Language`
variant the @bradmax_cloud redistributor ships). Below the
system block, 33-hyphen separators delimit three sections: a
browser-version inventory listing every binary version found
on disk per browser, a 4-field installed-software inventory
(`Display Name:` / `Publisher:` / `Version:` / `Install Source:`), and a flat `KEY = value` environment-variable dump.

### Tiếng Việt

Mars Stealer là mã độc đánh cắp thông tin trên Windows, được ghi nhận công khai lần đầu vào giữa năm 2021. Đây là một bản fork từ mã nguồn của Oski Stealer đời trước, có khả năng thu thập thông tin xác thực trình duyệt, ví tiền điện tử, các tiện ích mở rộng MFA, cũng như dữ liệu phiên đăng nhập Telegram / Discord. Họ mã độc này được ghi lại trong các phân tích mã độc công khai từ năm 2022 trở đi, bao gồm sự kiện rò rỉ mã nguồn được công bố vào tháng 3 năm 2022, và được theo dõi dưới định danh chuẩn `win.mars_stealer`. Vụ rò rỉ mã nguồn vào tháng 3 năm 2022 đã tạo ra một loạt trình xây dựng (builder) phái sinh sử dụng cùng bộ từ vựng khuôn mẫu bảng điều khiển với một số điều chỉnh nhỏ về cấu trúc khối trường dữ liệu; phía tiếp nhận dữ liệu thấy các log thuộc dòng Mars xuất hiện từ @bradmax_cloud và các kênh phân phối lại khác chuyên bán lại dữ liệu đầu ra của builder mà không nêu rõ tên bản fork cụ thể.

Log thu thập được mở đầu bằng một khối hệ thống dạng `Key: Value` phẳng gồm 11 trường: `Country`, `IP`, `Time Zone`, một khối con ngôn ngữ, `Processor`, `Installed RAM` (kèm tiền tố `Installed`), `OS` (định dạng theo `Windows <N> build <NNNNN> (64 Bit)`), `Video card` (dấu cách + `card` viết thường), và `Display Resolution` (dưới dạng `WxH`). Theo các phân tích công khai, khối con ngôn ngữ nguyên bản của Mars có hai trường (`Display Language:` cùng `Keyboard Languages:`); các bản fork sau khi rò rỉ đã được ghi nhận tái cấu trúc khối con này (ví dụ biến thể ba trường `System Language` / `User Language` / `Keyboard Language` mà đối tượng phân phối lại @bradmax_cloud sử dụng). Bên dưới khối hệ thống, các dấu phân cách gồm 33 dấu gạch ngang chia tách ba phần: danh sách kiểm kê phiên bản trình duyệt liệt kê mọi phiên bản nhị phân tìm thấy trên ổ đĩa theo từng trình duyệt, một danh sách kiểm kê phần mềm đã cài đặt gồm 4 trường (`Display Name:` / `Publisher:` / `Version:` / `Install Source:`), và một bản kết xuất biến môi trường `KEY = value` dạng phẳng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **medium**
- Aliases: `Mars`, `MarsStealer`, `Mars Stealer family`
- Variants observed: **1**
- CyStack observations represented: **3**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chromium and Firefox families) | Thông tin xác thực đã lưu trong trình duyệt (họ Chromium và Firefox) |
| Browser cookies, autofill, history | Cookie, dữ liệu tự động điền, lịch sử duyệt web của trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng ví trên máy tính |
| MFA / 2FA browser extensions | Tiện ích mở rộng MFA / 2FA trên trình duyệt |
| Telegram and Discord session data | Dữ liệu phiên đăng nhập Telegram và Discord |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng và cài đặt vùng miền của hệ thống |
| Installed-software inventory and environment-variable dump | Danh sách kiểm kê phần mềm đã cài đặt và bản kết xuất biến môi trường |

## Detection notes / Ghi chú nhận diện

### English

The `Installed RAM:` and `Video card:` field-key literals are
the cleanest fingerprint anchors; both are documented in
public Mars Stealer analyses and do not appear in other family
panel templates. Pair either with the `Display Resolution:`
two-word key to avoid the small residual collision risk
against unrelated text. During triage, treat post-March-2022
samples as Mars-fork lineage rather than canonical Mars: the
source-code leak produced many derivatives and the specific
fork is rarely identifiable from the panel output alone.

### Tiếng Việt

Các chuỗi khóa trường dữ liệu `Installed RAM:` và `Video card:` là các điểm neo nhận diện rõ ràng nhất; cả hai đều được ghi nhận trong các phân tích công khai về Mars Stealer và không xuất hiện trong khuôn mẫu bảng điều khiển của các họ mã độc khác. Nên kết hợp một trong hai chuỗi này với khóa hai từ `Display Resolution:` để giảm thiểu rủi ro trùng lặp nhỏ còn lại với các văn bản không liên quan. Trong quá trình phân loại ban đầu, nên coi các mẫu xuất hiện sau tháng 3 năm 2022 thuộc dòng fork của Mars thay vì Mars nguyên bản: vụ rò rỉ mã nguồn đã tạo ra nhiều biến thể phái sinh và bản fork cụ thể hiếm khi có thể xác định chỉ dựa vào dữ liệu đầu ra của bảng điều khiển.

## Observed log variants

### `v_8de2e373e826d69cbb04e67395a898f1`

- Format ID: `cs-bradmax-cloud-mars`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **medium**
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_8de2e373e826d69cbb04e67395a898f1/sample.txt)
- Sample SHA-256: `0734e805c81bd842b214ec522243587bd305c7d319a7dc3ae94b2f57d5252ed1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Installed RAM`, `Keyboard Language`, `MachineID`, `System Language`, `User Language`, `Video card`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |

## Related catalog profiles

- None recorded.

## Related external families

- `oski-stealer`

## Sources

- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-mars-stealer>
- <https://x-junior.github.io/malware%20analysis/2022/05/19/MarsStealer.html>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.mars_stealer>

Machine-readable record: [family.json](family.json)
