# CSDaisyBuildBlockStealer

## Overview / Tổng quan

### English

CSDaisyBuildBlockStealer is a CyStack-coined identifier for
a Daisy Private cloud panel that wraps the four-key
`Build Path` / `Build ID` / `Build Version` / `Build Comment`
block body in the digit-obfuscated Daisy Cloud per-line
watermark. Observed inside `BANANA VIP <DD>-<MM>-<YYYY>` and
sibling repackager archives whose top folder wraps a
`<32-char>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<SS>_<micros>/ UserInformation.txt` victim path.

The body opens with the pipe-bordered Daisy Cloud ASCII
banner block (pricing tiers, `t.me/UP_DAISYCLOUD` channel
URL, per-line anti-leech ASCII art), then every payload line
is prefixed with a digit-obfuscated `Daisy Private cloud`
watermark plus a 4-9 lowercase alphabetic gibberish token.
The obfuscation defeats naive substring-search leak checks:
a single grep for `Daisy Private cloud` cannot extract the
channel name from any individual line.

After stripping the per-line watermark and gibberish, the
body carries: `User time` (ISO wall-clock), `HWID` (MD5-
shape hex), `PC Name`, `User Name` (`HOSTNAME\USERNAME`),
`CPU`, `GPU`, `Memory` (GB-suffixed), `OS` (bare, may
localize the vendor prefix e.g. `Майкрософт`), `Active window`, `Build Path` (sample execution path), `Build ID`
(builder identifier), `Build Version`, `Build Comment`,
`Admin rights` (true/false), `IP`, `GEO` (ISO-2), and
`Resolution`. Field vocabulary matches the sibling
bare-body `CSBuildBlockStealer` layout already documented
under the `@ft7links` / `@BRADMAX` / `@updh1` resellers.

The `@UP_DAISYCLOUD` channel is described by VERITI and
CyberSecurityNews as a Telegram credential-trading channel
that potentially resells RedLine Stealer logs. Both sources
qualify the attribution as speculative. No curated CTI
vendor confirms a canonical family attribution for the
underlying BuildBlock body, so family stays CyStack-coined
with the Daisy Cloud panel brand and channel handle
preserved as attribution context.

### Tiếng Việt

CSDaisyBuildBlockStealer là định danh do CyStack đặt cho một bảng điều khiển Daisy Private cloud, bọc phần thân khối bốn khóa `Build Path` / `Build ID` / `Build Version` / `Build Comment` trong watermark theo từng dòng của Daisy Cloud được ngụy trang bằng chữ số. Được ghi nhận bên trong `BANANA VIP <DD>-<MM>-<YYYY>` và các kho lưu trữ đóng gói lại liên quan có thư mục gốc bọc một đường dẫn nạn nhân `<32-char>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<SS>_<micros>/ UserInformation.txt`.

Phần thân mở đầu bằng khối banner ASCII của Daisy Cloud có viền dấu gạch đứng (các gói giá, URL kênh `t.me/UP_DAISYCLOUD`, hình ảnh ASCII chống rò rỉ theo từng dòng), sau đó mỗi dòng dữ liệu được gắn tiền tố watermark `Daisy Private cloud` đã bị ngụy trang bằng chữ số cộng với một chuỗi ký tự chữ thường vô nghĩa dài 4-9 ký tự. Cách ngụy trang này vô hiệu hóa các phương pháp kiểm tra rò rỉ dựa trên tìm kiếm chuỗi con đơn giản: một lệnh grep tìm `Daisy Private cloud` không thể trích xuất tên kênh từ bất kỳ dòng riêng lẻ nào.

Sau khi loại bỏ watermark và chuỗi vô nghĩa theo từng dòng, phần thân mang: `User time` (giờ hệ thống theo ISO), `HWID` (chuỗi hex có cấu trúc MD5), `PC Name`, `User Name` (`HOSTNAME\USERNAME`), `CPU`, `GPU`, `Memory` (có hậu tố GB), `OS` (không kèm hậu tố, có thể bản địa hóa tiền tố nhà cung cấp ví dụ `Майкрософт`), `Active window`, `Build Path` (đường dẫn thực thi mẫu), `Build ID` (định danh trình tạo), `Build Version`, `Build Comment`, `Admin rights` (true/false), `IP`, `GEO` (ISO-2), và `Resolution`. Vốn từ vựng trường dữ liệu khớp với bố cục thân trần `CSBuildBlockStealer` liên quan đã được tài liệu hóa trước đó dưới các đại lý `@ft7links` / `@BRADMAX` / `@updh1`.

Kênh `@UP_DAISYCLOUD` được VERITI và CyberSecurityNews mô tả là một kênh Telegram giao dịch thông tin xác thực, có khả năng bán lại log của RedLine Stealer. Cả hai nguồn đều xác nhận sự quy kết này chỉ mang tính suy đoán. Không có nhà cung cấp CTI đã qua chọn lọc nào xác nhận một quy kết họ mã độc chuẩn tắc cho phần thân BuildBlock nền tảng, do đó họ mã độc vẫn giữ nguyên định danh do CyStack đặt, với thương hiệu bảng điều khiển Daisy Cloud và tên kênh được giữ lại làm bối cảnh quy kết.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Daisy Private cloud + Build block body`, `@UP_DAISYCLOUD BuildBlock variant`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Sample execution path (`Build Path`) and builder identifier | Đường dẫn thực thi mẫu (`Build Path`) và định danh trình tạo |
| Host and user identity with elevation status | Danh tính máy và người dùng cùng trạng thái nâng quyền |
| CPU, GPU, memory, and display inventory | Thông tin kiểm kê CPU, GPU, bộ nhớ và màn hình |
| Public-IP geolocation (ISO-2 country) and system wall-clock | Định vị địa lý theo IP công khai (mã quốc gia ISO-2) và giờ hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ hits of the digit-obfuscated
`Daisy Private cloud` per-line watermark together with
the `Build Path:` and `Active window:` substrings and at
least one of `Build ID:` or `Build Comment:`. The three
body-key requirements mirror the sibling `CSBuildBlockStealer`
canonical-path gate but drop the line-anchor since the
fields sit after the watermark prefix. The 3+ watermark
threshold guards against unrelated prose that happens to
mention the `Daisy Private cloud` string once. The peer
`CSDaisyCloudStealer` (RedlineLike body) and
`CSDaisyBlockCloudStealer` (canonical-Redline body) both
decline because their body-key anchors (`Operation System:`
typo, `Hardwares:` block) are absent from the BuildBlock
body vocabulary.

### Tiếng Việt

Việc nhận diện dấu hiệu yêu cầu 3 lần trở lên xuất hiện watermark theo từng dòng `Daisy Private cloud` đã bị ngụy trang bằng chữ số, cùng với các chuỗi con `Build Path:` và `Active window:`, và ít nhất một trong hai chuỗi `Build ID:` hoặc `Build Comment:`. Ba yêu cầu về khóa trong phần thân này phản ánh cổng đường dẫn chuẩn tắc `CSBuildBlockStealer` liên quan nhưng bỏ qua điểm neo dòng vì các trường dữ liệu nằm sau tiền tố watermark. Ngưỡng 3 lần watermark trở lên nhằm phòng tránh các đoạn văn bản không liên quan tình cờ nhắc đến chuỗi `Daisy Private cloud` một lần. Các đối tượng liên quan `CSDaisyCloudStealer` (phần thân dạng RedlineLike) và `CSDaisyBlockCloudStealer` (phần thân Redline chuẩn tắc) đều không khớp vì điểm neo khóa phần thân của chúng (lỗi chính tả `Operation System:`, khối `Hardwares:`) không có mặt trong vốn từ vựng phần thân BuildBlock.

## Observed log variants

### `v_ba310abbae7f9d0017e532016775b82f`

- Format ID: `cs-daisy-build-block-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `Daisy Private cloud`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ba310abbae7f9d0017e532016775b82f/UserInformation.txt)
- Sample SHA-256: `9a0c8b2d6360b90bdeb94d6573fe85e34891d35610720ad61643629ec7896495`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Daisy Private cloud`
- Field labels: `1 Week`, `2 Week`, `A 3 Month`, `A _______ Join`, `D 1 Month`, `D Join`, `D0a9i8s3y5 P0r3i3v7a7t4e c9l7o7u4d9 falrppgcm User time`, `D0a9i8s3y5 P0r3i3v7a7t4e c9l7o7u4d9 lpgkyvpw Memory`, `D0a9i8s3y5 P0r3i3v7a7t4e c9l7o7u4d9 nhklrcraz Build Comment`, `D0a9i8s3y5 P0r3i3v7a7t4e c9l7o7u4d9 tnuqor Build ID`, `D0a9i8s3y5 P0r3i3v7a7t4e c9l7o7u4d9 wflowlbg Admin rights`, `D6a1i2s9y2 P1r5i7v2a0t6e c6l8o9u4d1 ehrtkbun IP`, `D6a1i2s9y2 P1r5i7v2a0t6e c6l8o9u4d1 thbqty HWID`, `D6a1i2s9y2 P1r5i7v2a0t6e c6l8o9u4d1 ufhaiza Build Version`, `D6a5i8s0y3 P2r8i8v0a5t5e c0l1o8u1d8 frsmiifs Resolution`, `D6a5i8s0y3 P2r8i8v0a5t5e c0l1o8u1d8 numpn Build Path`, `D6a5i8s0y3 P2r8i8v0a5t5e c0l1o8u1d8 rkxbi User Name`, `D6a5i8s0y3 P2r8i8v0a5t5e c0l1o8u1d8 sbcqdmqjx GEO`, `D9a6i5s1y6 P8r2i7v4a9t6e c5l2o6u6d3 aqupfc CPU`, `D9a6i5s1y6 P8r2i7v4a9t6e c5l2o6u6d3 iyviidkc PC Name`, `D9a6i5s1y6 P8r2i7v4a9t6e c5l2o6u6d3 ksgqlc GPU`, `D9a6i5s1y6 P8r2i7v4a9t6e c5l2o6u6d3 seth Active window`, `D9a6i5s1y6 P8r2i7v4a9t6e c5l2o6u6d3 spnrd OS`, `I LifeTime`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- [CSBuildBlockStealer](../cs-build-block-stealer/)
- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)

## Related external families

- `csdaisyblockcloudstealer`

## Observed distribution channels

- <https://t.me/UP_DAISYCLOUD>

## Sources

- <https://cybersecuritynews.com/daisy-cloud-hacker-group-exposed-30k-login-credentials/>
- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>

Machine-readable record: [family.json](family.json)
