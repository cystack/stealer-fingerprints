# PureLogs

## Overview / Tổng quan

### English

PureLogs is a 64-bit C# infostealer in the Pure malware
family, distributed since 2022 under a malware-as-a-service
subscription model. The stub is obfuscated with ConfuserEx,
.NET Reactor, and custom virtualization, with the C2
configuration carried as a Protobuf-serialized, XOR plus
3DES-encrypted blob in the binary resources.

The exfiltrated artifact is a flat JSON `log.json` with a
nested `BotInfo` sub-object split into `System` /
`Hardware` / `Network` sections. The top-level fields
carry a `Username_Hwid` (literal `user_<hwid>` join), a
`StubVersion` (e.g. `v4.0.1`) and a `LogFolder` whose
path begins with `C:\PureLogs v4\Logs\<COUNTRY>\`.

### Tiếng Việt

PureLogs là mã độc đánh cắp thông tin viết bằng C# 64-bit thuộc họ mã độc Pure, được phân phối từ năm 2022 theo mô hình đăng ký dịch vụ malware-as-a-service. Stub được làm rối bằng ConfuserEx, .NET Reactor và kỹ thuật ảo hóa tùy biến, với cấu hình C2 được mang dưới dạng khối dữ liệu tuần tự hóa Protobuf, mã hóa XOR kết hợp 3DES nằm trong tài nguyên của tệp nhị phân.

Dấu vết bị đưa ra ngoài là một tệp JSON phẳng `log.json` với một sub-object lồng `BotInfo` được chia thành các phần `System` / `Hardware` / `Network`. Các trường cấp cao nhất mang một `Username_Hwid` (được ghép nối bằng literal `user_<hwid>`), một `StubVersion` (ví dụ `v4.0.1`) và một `LogFolder` có đường dẫn bắt đầu bằng `C:\PureLogs v4\Logs\<COUNTRY>\`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `PureLog Stealer`, `PureLogStealer`, `win.purelogs`
- Variants observed: **1**
- CyStack observations represented: **4,180**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, history | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu autofill, lịch sử duyệt web |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng và ứng dụng desktop của ví tiền điện tử |
| Browser extension list and metadata | Danh sách tiện ích mở rộng trình duyệt và siêu dữ liệu liên quan |
| Outlook and other application data | Dữ liệu ứng dụng Outlook và các ứng dụng khác |
| Clipboard contents | Nội dung clipboard |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng hệ thống và ngôn ngữ/khu vực |

## Detection notes / Ghi chú nhận diện

### English

The `"StubVersion"`, `"Username_Hwid"`, and `"BotInfo"`
JSON-key trio is the cleanest fingerprint. The literal
`PureLogs v4` substring inside the `LogFolder` value
self-identifies the family. The misspelled
`BrowserExtenstions` (note missing `i`) field name is
invariant across observed samples and useful as a sanity
check during triage.

### Tiếng Việt

Bộ ba khóa JSON `"StubVersion"`, `"Username_Hwid"` và `"BotInfo"` là dấu hiệu nhận diện rõ ràng nhất. Chuỗi con `PureLogs v4` literal xuất hiện bên trong giá trị `LogFolder` tự nhận diện đây là họ mã độc này. Tên trường bị viết sai chính tả `BrowserExtenstions` (lưu ý thiếu `i`) là bất biến trong các mẫu quan sát được và hữu ích để làm bước kiểm tra nhanh trong quá trình phân loại ban đầu.

## Observed log variants

### `v_d9e2bb74fa7cf17912df704a74ceef77`

- Format ID: `purelogs`
- Observed filenames: `log.json`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **4,180**
- Representative sample: [open sample](samples/v_d9e2bb74fa7cf17912df704a74ceef77/sample.txt)
- Sample SHA-256: `75548851886dcc2cb5b6f01b793f80d67b95c5a13aa54672fb53e591edf4d065`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `BotInfo`, `StubVersion`, `Username_Hwid`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1027](https://attack.mitre.org/techniques/T1027/) | Obfuscated Files or Information | Tệp hoặc thông tin bị làm rối |

## Related catalog profiles

- None recorded.

## Related external families

- `pureminer`
- `purecrypter`

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.purelogs>
- <https://any.run/malware-trends/purelogs/>
- <https://flashpoint.io/blog/purelogs-low-cost-infostealer-high-impact-threat/>
- <https://www.swisspost-cybersecurity.ch/news/purelogs-infostealer-analysis-dont-judge-a-png-by-its-header>

Machine-readable record: [family.json](family.json)
