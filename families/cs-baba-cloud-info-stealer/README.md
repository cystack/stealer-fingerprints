# CSBabaCloudInfoStealer

## Overview / Tổng quan

### English

CSBabaCloudInfoStealer is a CyStack-coined identifier for
a third `@BabaCloud_New`-repackaged `System_Info.txt` body
shape observed alongside the sibling Vidar-shape and
BuildBlock-shape distributions from the same operator.
The body is a bare `Key: Value` block with verbose
Redline-shape field names (`Execution Path`,
`Computer Name`, `Installed RAM`, `Operation System` sic
typo, `Processor` split into `Processor Threads` /
`Processor Cores`, `Graphics Card` header with the GPU
model on the next indented line) followed by a blank line
and a spaced-colon trailer footer carrying `IP Address:`,
`Time :`, `Country :`, and `User:` values that the peer
sibling Info shapes strip entirely.

Observed inside `@BabaCloud_New { <count>+ } Cloud Logs <DD>.<MM>.<YYYY>.7z` aggregator packs at
`@BabaCloud_New {<seq>} [<CC>]_<IPv4>_<HWIDPFX>_<8-digit>_ <6-digit>/System_Info.txt` victim folders. Field vocabulary
is byte-identical to the peer `CSFateTrafficInfoStealer`,
`CSRoyCloudInfoStealer`, and `CSForzaTrafficStealer`
Info-family profiles; only the surrounding aggregator
wrapping (archive-path self-watermark, trailer footer
presence, in-body banner) differs between the sibling
profiles.

Public reporting attests `@BabaCloud_New` as a Telegram
cloud-logs operation that has released multiple
thousand-record credential dumps since mid-2025 but does
not name the underlying panel family for either its
Vidar-shape, BuildBlock-shape, or Info-shape
distributions. The verbose bare-KV Info-family panel
builder itself is unattested by any surveyed curated CTI
vendor. Family stays CyStack-coined with the
`@BabaCloud_New` distribution channel preserved as
attribution context; rename the profile if a published
threat-intel mapping surfaces.

### Tiếng Việt

CSBabaCloudInfoStealer là định danh do CyStack đặt tên cho một cấu trúc dữ liệu thân `@BabaCloud_New`-đóng gói lại lần thứ ba của `System_Info.txt`, được quan sát cùng với các bản phân phối cấu trúc Vidar-shape và BuildBlock-shape liên quan từ cùng một đối tượng vận hành.

Phần thân là một khối `Key: Value` trần với các tên trường dạng Redline-shape rất chi tiết (`Execution Path`, `Computer Name`, `Installed RAM`, lỗi chính tả `Operation System` sic, `Processor` được tách thành `Processor Threads` / `Processor Cores`, tiêu đề `Graphics Card` với model GPU nằm ở dòng thụt lề kế tiếp) theo sau bởi một dòng trống và một phần chân trang dạng dấu hai chấm cách khoảng mang các giá trị `IP Address:`, `Time :`, `Country :`, và `User:` mà các cấu trúc Info liên quan khác đã loại bỏ hoàn toàn.

Được quan sát bên trong các gói tổng hợp `@BabaCloud_New { <count>+ } Cloud Logs <DD>.<MM>.<YYYY>.7z` tại các thư mục nạn nhân `@BabaCloud_New {<seq>} [<CC>]_<IPv4>_<HWIDPFX>_<8-digit>_ <6-digit>/System_Info.txt`. Từ vựng trường giống hệt từng byte với các hồ sơ họ mã độc Info liên quan `CSFateTrafficInfoStealer`, `CSRoyCloudInfoStealer`, và `CSForzaTrafficStealer`; chỉ có phần đóng gói tổng hợp xung quanh (watermark tự nhận riêng theo đường dẫn lưu trữ, sự hiện diện của chân trang, banner trong thân) là khác nhau giữa các hồ sơ liên quan.

Báo cáo công khai xác nhận `@BabaCloud_New` là một hoạt động cloud-logs trên Telegram đã phát hành nhiều bản trích xuất thông tin xác thực hàng nghìn bản ghi kể từ giữa năm 2025, nhưng không nêu tên họ panel nền tảng cho bất kỳ bản phân phối nào của nó, dù là Vidar-shape, BuildBlock-shape, hay Info-shape. Bản thân trình xây dựng panel Info-family dạng bare-KV chi tiết này chưa được ghi nhận bởi bất kỳ nhà cung cấp CTI đã khảo sát nào. Họ mã độc vẫn giữ tên do CyStack đặt, với kênh phân phối `@BabaCloud_New` được bảo toàn làm bối cảnh quy kết; sẽ đổi tên hồ sơ này nếu xuất hiện một ánh xạ threat-intel đã công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BabaCloud_New + Info body`, `BabaCloud bare-KV Info variant`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Sample execution path and installer origin | Đường dẫn thực thi mẫu và nguồn gốc trình cài đặt |
| Host, user, and NetBIOS identity with elevation status | Định danh máy, người dùng và NetBIOS cùng trạng thái nâng quyền |
| CPU, GPU, memory, display, and antivirus inventory | Kiểm kê CPU, GPU, bộ nhớ, màn hình và phần mềm diệt virus |
| Public-IP geolocation (ISO-2 country) and system wall-clock | Định vị địa lý IP công khai (mã quốc gia ISO-2) và giờ hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Detection requires the case-insensitive `babacloud`
self-watermark token in the `system_path` folder tree
together with line-anchored `Execution Path:` and
`Installed RAM:` substrings. The two Redline-shape
bare-KV field anchors carry the body shape signal; the
`babacloud` folder-tree token contains the claim to files
demonstrably shipped by this reseller channel. Peer
sibling Info profiles (`CSFateTrafficInfoStealer`,
`CSRoyCloudInfoStealer`, `CSForzaTrafficStealer`) gate on
their own aggregator tokens (`fatetraffic`, `roycloud`,
`forzatraffic`) so all four Info-shape parsers are
mutually exclusive at dispatch time.

### Tiếng Việt

Việc nhận diện đòi hỏi token watermark tự nhận không phân biệt hoa thường `babacloud` trong cây thư mục `system_path` cùng với các chuỗi con neo theo dòng `Execution Path:` và `Installed RAM:`. Hai điểm neo trường bare-KV dạng Redline-shape mang tín hiệu cấu trúc thân; token cây thư mục `babacloud` chứa khẳng định gắn với các tệp đã được chứng minh là phát hành qua kênh reseller này. Các hồ sơ Info liên quan khác (`CSFateTrafficInfoStealer`, `CSRoyCloudInfoStealer`, `CSForzaTrafficStealer`) được kiểm soát bởi các token tổng hợp riêng của chúng (`fatetraffic`, `roycloud`, `forzatraffic`), do đó cả bốn trình phân tích cấu trúc Info-shape đều loại trừ lẫn nhau tại thời điểm điều phối.

## Observed log variants

### `v_beddd51757450a0525df5f34c0d7bc69`

- Format ID: `cs-baba-cloud-info-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: `@BabaCloud_New`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_beddd51757450a0525df5f34c0d7bc69/System_Info.txt)
- Sample SHA-256: `517026d6aacf13746b0818ea8c2f108434de5a250e03a88cf091af69a3598b9c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Country`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `IP Address`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time`, `Time Zone`, `User`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- [CSFateTrafficInfoStealer](../cs-fate-traffic-info-stealer/)
- [CSRoyCloudInfoStealer](../cs-roy-cloud-info-stealer/)
- [CSForzaTrafficStealer](../cs-forza-traffic-stealer/)
- [CSBabaCloudStealer](../cs-baba-cloud-stealer/)
- [CSBabaCloudBuildBlockStealer](../cs-baba-cloud-build-block-stealer/)

## Sources

- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-22361-credentials-leaked/>
- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-breach-explained-17507-records/>

Machine-readable record: [family.json](family.json)
