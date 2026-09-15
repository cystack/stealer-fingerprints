# CSGoRuntimeStealer

## Overview / Tổng quan

### English

CSGoRuntimeStealer is a CyStack-coined identifier for a bare
4-field `system_info.txt` panel observed inside `!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/<operator-handle>/system_info.txt` victim
folders (e.g. `[UN]<IPv4>/poopbandit/system_info.txt`).
The body is a 5-line minimal panel: an ALL CAPS triple-equals
`=== SYSTEM INFORMATION ===` section header, four flat
key-value lines (`User: <Computer>\<Username>` / `Computer:` /
`OS: <goos> <goarch>` / `Directory:`), and a closing
triple-equals rule.

The strongest single fingerprint is the `OS:` value: Go
binaries emit `runtime.GOOS + " " + runtime.GOARCH` which
produces strings like `windows amd64`, `linux 386`, or `darwin arm64`. The bare lowercase two-token shape does not appear in
any other surveyed stealer-builder runtime: .NET emits
`Microsoft Windows <version>`, Python emits
`Windows-<release>-<build>`, Lumma emits `Windows <version> <edition> (<build>)`. The Go runtime shape is the panel's
clearest builder-attribution signal.

The `User:` line carries a `<Computer>\<Username>`
backslash-separated identity (the panel's preferred shape over
`os/user.Current().Username` which would return just the
username on Unix). The `Directory:` line carries the malware's
execution path; the observed sample ran out of `%TEMP%`. The
path-side `<operator-handle>/` segment between the victim
folder and the `system_info.txt` file exposes the operator's
panel-side identifier (`poopbandit` in the observed sample);
the operator handle is retained as distribution-channel
evidence in this catalog.

Public reporting and the public stealer-format catalogues do
not document a family that emits exactly this minimal
Go-runtime panel shape. The `poopbandit` operator handle is
unattested. Family attribution is provisional pending a
published mapping.

### Tiếng Việt

CSGoRuntimeStealer là định danh do CyStack đặt cho một panel 4 trường không có tiền tố `system_info.txt` được phát hiện bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/<operator-handle>/system_info.txt` (ví dụ: `[UN]<IPv4>/poopbandit/system_info.txt`).

Phần thân là một panel tối giản gồm 5 dòng: tiêu đề mục viết HOA toàn bộ dạng ba dấu bằng `=== SYSTEM INFORMATION ===`, bốn dòng khóa-giá trị phẳng (`User: <Computer>\<Username>` / `Computer:` / `OS: <goos> <goarch>` / `Directory:`), và một dòng kẻ ba dấu bằng đóng.

Dấu vết nhận diện mạnh nhất là giá trị `OS:`: các tệp nhị phân Go tạo dữ liệu đầu ra `runtime.GOOS + " " + runtime.GOARCH`, sinh ra các chuỗi như `windows amd64`, `linux 386`, hoặc `darwin arm64`. Cấu trúc dữ liệu hai token chữ thường không có tiền tố này không xuất hiện trong bất kỳ runtime của trình dựng mã độc đánh cắp thông tin nào khác được khảo sát: .NET tạo ra `Microsoft Windows <version>`, Python tạo ra `Windows-<release>-<build>`, Lumma tạo ra `Windows <version> <edition> (<build>)`. Cấu trúc dữ liệu runtime Go là tín hiệu quy kết trình dựng (builder) rõ ràng nhất của panel này.

Dòng `User:` mang định danh phân tách bằng dấu gạch chéo ngược `<Computer>\<Username>` (đây là cấu trúc dữ liệu mà panel ưu tiên hơn so với `os/user.Current().Username` vốn chỉ trả về tên người dùng trên Unix). Dòng `Directory:` mang đường dẫn thực thi của mã độc; mẫu quan sát được chạy từ `%TEMP%`. Đoạn `<operator-handle>/` ở phía đường dẫn, nằm giữa thư mục nạn nhân và tệp `system_info.txt`, lộ ra định danh phía panel của đối tượng vận hành (`poopbandit` trong mẫu quan sát được); handle của đối tượng vận hành được lưu giữ trong danh mục này như một bằng chứng về kênh phân phối.

Các báo cáo công khai cũng như các danh mục định dạng mã độc đánh cắp thông tin công khai không ghi nhận họ mã độc nào tạo ra chính xác cấu trúc dữ liệu panel runtime Go tối giản này. Handle đối tượng vận hành `poopbandit` chưa được ghi nhận ở nguồn nào khác. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời cho đến khi có ánh xạ được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Go-runtime minimal stealer panel`, `poopbandit Information.txt`
- Variants observed: **1**
- CyStack observations represented: **3**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim hostname (`Computer:` field plus the backslash half of the `User:` line) | Tên máy nạn nhân (trường `Computer:` cộng với nửa phân tách bằng dấu gạch chéo ngược của dòng `User:`) |
| Victim account shortname (`User:` line) | Tên tài khoản rút gọn của nạn nhân (dòng `User:`) |
| Operating system / architecture (`OS:` line via Go runtime values) | Hệ điều hành / kiến trúc (dòng `OS:` thông qua các giá trị runtime Go) |
| Malware execution directory (`Directory:` line) | Thư mục thực thi của mã độc (dòng `Directory:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires `=== SYSTEM INFORMATION ===` (ALL
CAPS) AND a `Directory:` field AND an `OS:` line matching
the Go-runtime `<goos> <goarch>` two-lowercase-token
shape PLUS absence of `=== ENVIRONMENT VARIABLES ===`
(rules out `CSEnvVarDumpStealer`). The Go-runtime
`OS:` shape is the panel's strongest single signal: no
other surveyed stealer-builder runtime emits the OS
field in this exact form. During triage, the path-side
`<operator-handle>/` segment (between the
`[<CC>]<IPv4>/` victim folder and the
`system_info.txt` file) carries the operator's panel-side identifier; cluster IOCs by handle to track
distribution.

### Tiếng Việt

Dấu vết nhận diện yêu cầu `=== SYSTEM INFORMATION ===` (viết HOA toàn bộ) VÀ một trường `Directory:` VÀ một dòng `OS:` khớp với cấu trúc dữ liệu hai token chữ thường `<goos> <goarch>` đặc trưng của runtime Go CỘNG VỚI việc không có `=== ENVIRONMENT VARIABLES ===` (loại trừ khả năng là `CSEnvVarDumpStealer`). Cấu trúc dữ liệu `OS:` của runtime Go là tín hiệu đơn lẻ mạnh nhất của panel này: không có runtime của trình dựng mã độc đánh cắp thông tin nào khác được khảo sát tạo dữ liệu đầu ra trường hệ điều hành theo đúng dạng này. Trong quá trình phân loại ban đầu (triage), đoạn `<operator-handle>/` ở phía đường dẫn (nằm giữa thư mục nạn nhân `[<CC>]<IPv4>/` và tệp `system_info.txt`) mang định danh phía panel của đối tượng vận hành; hãy phân cụm các dấu hiệu xâm nhập (IOC) theo handle để theo dõi kênh phân phối.

## Observed log variants

### `v_5ea325f8d303821fabff4fe14535f995`

- Format ID: `cs-go-runtime-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: `poopbandit`
- Attribution confidence: **unknown**
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_5ea325f8d303821fabff4fe14535f995/sample.txt)
- Sample SHA-256: `d607cdbe5aa335eacb986db240a008540ba753990b7faf158ebc9a26b8f0e7dc`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== SYSTEM INFORMATION ===`
- Field labels: `Directory`, `OS`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1059.004](https://attack.mitre.org/techniques/T1059/004/) | Unix Shell | Unix shell |

## Related catalog profiles

- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSEnvVarDumpStealer](../cs-env-var-dump-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
