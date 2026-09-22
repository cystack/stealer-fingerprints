# CSBabaCloudBuildBlockStealer

## Overview / Tổng quan

### English

CSBabaCloudBuildBlockStealer is a CyStack-coined identifier
for an `@BabaCloud_New`-repackaged `System_Info.txt` shape
that wraps the same four-key `Build Path` / `Build ID` /
`Build Version` / `Build Comment` body already observed under
the `@ft7links` / `@BRADMAX` / `@updh1` bare distributions.
The distinguishing feature is a per-line watermark: every
payload line carries a random 4-9-character lowercase
alphabetic token followed by roughly eight spaces before the
canonical `Key: Value` text. The obfuscation defeats naive
substring-search leak checks - a grep for `Build Path:` in
isolation cannot extract the field because the substring
never appears at column 0.

Observed inside `@BabaCloud_New { <count>+ } Cloud Logs <DD>.<MM>.<YYYY>.7z` aggregator packs at
`@BabaCloud_New {<seq>} [<CC>]_<IPv4>_<HWIDPFX>_<8-digit>_ <6-digit>/System_Info.txt` victim folders. After stripping
the gibberish prefix, the body carries `User time` (ISO
wall-clock), `HWID` (MD5-shape hex), `PC Name`, `User Name`
(`HOSTNAME\USERNAME`), `CPU`, `GPU`, `Memory` (GB-suffixed),
`OS`, `Active window`, `Build Path`, `Build ID` (builder
identifier), `Build Version`, `Build Comment`, `Admin rights`
(true/false), `IP`, `GEO` (ISO-2), and `Resolution`. Field
vocabulary is identical to the sibling `CSBuildBlockStealer`
layout; only the panel wrapping differs. A trailing
`Country : <CC>` tag in the Vidar-style spaced-colon form is
sometimes appended after a blank line.

Public reporting attests `@BabaCloud_New` as a Telegram
cloud-logs operation that has released multiple
thousand-record credential dumps since mid-2025 but does not
explicitly name the underlying panel family for either its
Vidar-shape or BuildBlock-shape distributions. The parallel
Daisy Cloud reseller applies a branded `Daisy Private cloud`
digit-obfuscated watermark to the same BuildBlock body; the
sibling `CSBabaCloudStealer` profile covers a Vidar-shape
body from the same `@BabaCloud_New` operator with distinct
field vocabulary (`MachineID :` / `GUID :` / `HWID :` /
`--- [ Hardware ] ---` section header). Family stays
CyStack-coined pending a published rebrand mapping.

### Tiếng Việt

CSBabaCloudBuildBlockStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu `System_Info.txt` được đóng gói lại dưới dạng `@BabaCloud_New`, bao bọc cùng một nội dung bốn khóa `Build Path` / `Build ID` / `Build Version` / `Build Comment` đã từng được ghi nhận trong các bản phân phối dạng thô `@ft7links` / `@BRADMAX` / `@updh1`.

Đặc điểm nhận dạng riêng biệt là một watermark trên từng dòng: mỗi dòng dữ liệu mang một chuỗi ký tự chữ thường ngẫu nhiên dài 4-9 ký tự, theo sau bởi khoảng tám khoảng trắng trước khi đến văn bản `Key: Value` tiêu chuẩn. Kỹ thuật gây rối này vô hiệu hóa các phương pháp kiểm tra rò rỉ dữ liệu dựa trên tìm kiếm chuỗi con đơn giản - một lệnh grep tìm `Build Path:` đơn lẻ sẽ không thể trích xuất trường dữ liệu này vì chuỗi con đó không bao giờ xuất hiện ở cột 0.

Được quan sát bên trong các gói tổng hợp `@BabaCloud_New { <count>+ } Cloud Logs <DD>.<MM>.<YYYY>.7z` tại các thư mục nạn nhân `@BabaCloud_New {<seq>} [<CC>]_<IPv4>_<HWIDPFX>_<8-digit>_ <6-digit>/System_Info.txt`. Sau khi loại bỏ tiền tố ký tự vô nghĩa, nội dung mang các trường `User time` (giờ hệ thống dạng ISO), `HWID` (chuỗi hex dạng MD5), `PC Name`, `User Name` (`HOSTNAME\USERNAME`), `CPU`, `GPU`, `Memory` (có hậu tố GB), `OS`, `Active window`, `Build Path`, `Build ID` (định danh builder), `Build Version`, `Build Comment`, `Admin rights` (true/false), `IP`, `GEO` (dạng ISO-2), và `Resolution`. Từ vựng của các trường dữ liệu giống hệt với bố cục `CSBuildBlockStealer` liên quan; chỉ có lớp bao bọc panel là khác biệt. Một thẻ `Country : <CC>` ở cuối, theo dạng dấu hai chấm cách khoảng kiểu Vidar, đôi khi được thêm vào sau một dòng trống.

Các báo cáo công khai xác nhận `@BabaCloud_New` là một hoạt động cloud-logs trên Telegram đã phát hành nhiều bản dump thông tin xác thực với hàng nghìn bản ghi kể từ giữa năm 2025, nhưng không nêu rõ tên họ panel gốc cho cả bản phân phối dạng Vidar lẫn dạng BuildBlock của nó. Đối tác bán lại song song Daisy Cloud áp dụng một watermark gây rối bằng chữ số mang thương hiệu `Daisy Private cloud` lên cùng nội dung BuildBlock; hồ sơ liên quan `CSBabaCloudStealer` đề cập đến nội dung dạng Vidar từ cùng đối tượng vận hành `@BabaCloud_New` nhưng có từ vựng trường dữ liệu khác (tiêu đề mục `MachineID :` / `GUID :` / `HWID :` / `--- [ Hardware ] ---`). Họ mã độc vẫn giữ nguyên định danh do CyStack đặt cho đến khi có bản đồ đổi thương hiệu được công bố chính thức.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BabaCloud_New + Build block body`, `BabaCloud gibberish-watermarked BuildBlock variant`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Sample execution path (`Build Path`) and builder identifier | Đường dẫn thực thi mẫu (`Build Path`) và định danh builder |
| Host and user identity with elevation status | Danh tính máy và người dùng cùng trạng thái nâng quyền |
| CPU, GPU, memory, and display inventory | Kiểm kê CPU, GPU, bộ nhớ và màn hình |
| Public-IP geolocation (ISO-2 country) and system wall-clock | Định vị địa lý theo IP công khai (quốc gia dạng ISO-2) và giờ hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Detection requires the per-line random-gibberish prefix to
appear on 5+ lines (each line starts with a 4-9 lowercase
alphabetic token followed by four or more whitespace
characters and the start of a capitalised field key) plus
the `Build Path:` and `Active window:` substrings and at
least one of `Build ID:` or `Build Comment:`. The 5+
prefix threshold guards against unrelated content that
happens to contain a single random-word-plus-spaces line.
The peer bare-body `CSBuildBlockStealer` profile is
line-anchored on the canonical keys at column 0 and cleanly
declines the watermarked shape; the parallel Daisy Cloud
`CSDaisyBuildBlockStealer` profile requires the branded
`Daisy Private cloud` digit-obfuscated watermark literal
that this `@BabaCloud_New` variant does not carry.

### Tiếng Việt

Việc nhận diện đòi hỏi tiền tố ký tự ngẫu nhiên vô nghĩa trên từng dòng phải xuất hiện ở 5 dòng trở lên (mỗi dòng bắt đầu bằng một chuỗi chữ thường 4-9 ký tự, theo sau bởi bốn khoảng trắng trở lên rồi đến phần đầu của một khóa trường dữ liệu viết hoa) cùng với các chuỗi con `Build Path:` và `Active window:`, và ít nhất một trong hai chuỗi `Build ID:` hoặc `Build Comment:`. Ngưỡng 5 dòng trở lên nhằm phòng tránh trường hợp nội dung không liên quan tình cờ chứa một dòng đơn lẻ dạng từ-ngẫu-nhiên-cộng-khoảng-trắng. Hồ sơ dạng thô liên quan `CSBuildBlockStealer` được neo theo dòng dựa trên các khóa tiêu chuẩn tại cột 0 và loại trừ rõ ràng cấu trúc có watermark này; trong khi đó hồ sơ Daisy Cloud `CSDaisyBuildBlockStealer` song song đòi hỏi chuỗi ký tự watermark gây rối bằng chữ số mang thương hiệu `Daisy Private cloud` mà biến thể `@BabaCloud_New` này không mang theo.

## Observed log variants

### `v_9df343d8a2434e2cc3d88ac472b23446`

- Format ID: `cs-baba-cloud-build-block-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: `@BabaCloud_New per-line gibberish watermark (BuildBlock)`
- Distribution channel: `@BabaCloud_New`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_9df343d8a2434e2cc3d88ac472b23446/System_Info.txt)
- Sample SHA-256: `56e32d1e628d8fa6e9efcd6ee3cba7163b0ebbbc64aaa9acd702a3c38d9e61a7`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `covp Build Path`, `jvfo Active window`, `kasvushnz Build Version`, `kfmujdmpm Build Comment`, `lffoopyvd HWID`, `nlunyhbnx User time`, `nxojoxyzh IP`, `ogddl Memory`, `orscz OS`, `qirxikjfr PC Name`, `sfmzbjlqh GEO`, `udvjebosh GPU`, `vdibsr CPU`, `wmfh Admin rights`, `wmnvi User Name`, `zhzzrrf Build ID`, `zmln Resolution`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- [CSBuildBlockStealer](../cs-build-block-stealer/)
- [CSBabaCloudStealer](../cs-baba-cloud-stealer/)
- [CSDaisyBuildBlockStealer](../cs-daisy-build-block-stealer/)

## Sources

- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-22361-credentials-leaked/>
- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-breach-explained-17507-records/>

Machine-readable record: [family.json](family.json)
