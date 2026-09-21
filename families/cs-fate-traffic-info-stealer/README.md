# CSFateTrafficInfoStealer

## Overview / Tổng quan

### English

CSFateTrafficInfoStealer is a CyStack-coined identifier for
a banner-stripped bare `Key: Value` `Info.txt` panel
redistributed under the @FATETRAFFIC Telegram aggregator.
Observed inside `BONUS @FATETRAFFIC <count> MIX <DD>-<MM>-<YYYY>.part<N>.rar` packs at
`[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/Info.txt` victim
folders.

Body fields: `Build Date` (C-preprocessor `__DATE__` shape),
`Configuration` (usually empty), `Execution Path`,
`Elevated`, `Computer Name`, `User Name`, `User Language`,
`Netbios`, `Operation System` (sic typo carried from Redline
/ Lumma sources), `Install Date`, `System Date`, `Time Zone`,
`Antivirus`, `HWID`, `Processor`, `Processor Threads`,
`Processor Cores`, `Graphics Card`, `Installed RAM`,
`Display Resolution`. The body is flat (no leading-dash
prefix unlike Lumma / Deimos / BABA), no `FileLocation:` /
`Build ID:` (unlike canonical Redline), and not YAML (unlike
Remus). No in-body panel banner, no `(sig:UNIX.HEX)`
Lumma-canonical watermark, no `RÔýĆløud` wrapper, no
`@forza_traffic` banner. Victim IP / country / HWID are
moved into the archive-path token rather than a trailing
body footer.

Body vocabulary is byte-identical to the sibling bare-KV
shapes attributed to `CSSigInfoStealer`, `CSRoyCloudInfoStealer`,
and `CSForzaTrafficStealer`, indicating the four aggregators
redistribute logs from a single underlying builder. No
curated CTI writeup published as of integration maps this
exact bare-KV Info.txt shape to a named canonical family.
HEROIC and Brinztech index @FATETRAFFIC as a Telegram
log-aggregator channel that resells mixed-source stealer
logs without attributing an underlying builder, so the
CyStack-coined name is preserved with the @FATETRAFFIC
distribution channel recorded as attribution context.

### Tiếng Việt

CSFateTrafficInfoStealer là định danh do CyStack đặt cho một bảng điều khiển (panel) dạng bare `Key: Value` `Info.txt` đã bị lột bỏ banner, được phát tán lại thông qua bộ gộp Telegram @FATETRAFFIC. Được ghi nhận bên trong các gói `BONUS @FATETRAFFIC <count> MIX <DD>-<MM>-<YYYY>.part<N>.rar` tại các thư mục nạn nhân `[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/Info.txt`.

Các trường trong phần thân: `Build Date` (cấu trúc dữ liệu kiểu C-preprocessor `__DATE__`), `Configuration` (thường để trống), `Execution Path`, `Elevated`, `Computer Name`, `User Name`, `User Language`, `Netbios`, `Operation System` (lỗi chính tả nguyên bản kế thừa từ các nguồn Redline / Lumma), `Install Date`, `System Date`, `Time Zone`, `Antivirus`, `HWID`, `Processor`, `Processor Threads`, `Processor Cores`, `Graphics Card`, `Installed RAM`, `Display Resolution`. Phần thân có bố cục phẳng (không có tiền tố gạch đầu dòng ở đầu như Lumma / Deimos / BABA), không có `FileLocation:` / `Build ID:` (khác với Redline chuẩn), và không phải định dạng YAML (khác với Remus). Không có banner panel trong phần thân, không có watermark chuẩn của Lumma `(sig:UNIX.HEX)`, không có wrapper `RÔýĆløud`, không có banner `@forza_traffic`. IP / quốc gia / HWID của nạn nhân được chuyển vào token đường dẫn lưu trữ thay vì nằm ở phần chân trang cuối thân.

Từ vựng trong phần thân giống hệt từng byte với các cấu trúc dữ liệu bare-KV liên quan được quy kết cho `CSSigInfoStealer`, `CSRoyCloudInfoStealer`, và `CSForzaTrafficStealer`, cho thấy bốn bộ gộp này phát tán lại nhật ký từ cùng một trình dựng (builder) nền tảng duy nhất. Chưa có báo cáo CTI đã được biên tập nào công bố tính đến thời điểm tích hợp ánh xạ chính xác cấu trúc dữ liệu bare-KV Info.txt này với một họ mã độc chuẩn có tên gọi cụ thể. HEROIC và Brinztech xếp loại @FATETRAFFIC là một kênh Telegram gộp nhật ký, bán lại nhật ký mã độc đánh cắp thông tin từ nhiều nguồn khác nhau mà không quy kết cho một trình dựng nền tảng cụ thể, vì vậy tên gọi do CyStack đặt được giữ nguyên, với kênh phát tán @FATETRAFFIC được ghi lại như bối cảnh quy kết.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@FATETRAFFIC bare-KV Info.txt panel`, `FateTraffic banner-stripped Info.txt`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host metadata: hostname, NetBIOS, Windows username, language | Siêu dữ liệu máy: tên máy, NetBIOS, tên người dùng Windows, ngôn ngữ |
| OS fingerprint with build number and architecture | Dấu vân tay hệ điều hành kèm số hiệu bản dựng (build number) và kiến trúc |
| Hardware inventory: CPU model with cores/threads, GPU, installed RAM | Kiểm kê phần cứng: model CPU kèm số lõi/luồng, GPU, dung lượng RAM đã lắp |
| Installed antivirus product name | Tên sản phẩm diệt virus đã cài đặt |
| Sample execution path and elevation flag | Đường dẫn thực thi mẫu và cờ nâng quyền (elevation flag) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint gates on line-anchored `Execution Path:` and
`Installed RAM:` fields together with a case-insensitive
`fatetraffic` self-watermark in the archive folder tree.
The @FATETRAFFIC aggregator writes its handle into every
archive filename and top-level folder, so any unpacked
`Info.txt` id retains the token verbatim.

Canonical Redline declines because of the absent operator
banner and `FileLocation:` / `Build ID:` keys. Canonical
Lumma declines because of the absent `-` dash prefix on
every field. The sibling `CSSigInfoStealer` bare-KV shape
declines because of the absent `(sig:UNIX.HEX)` Lumma
watermark; `CSRoyCloudInfoStealer` declines because of the
absent `RÔýĆløud` wrapper; `CSForzaTrafficStealer`
declines because of the absent `[CLÓUD CHANNEL - @forza_traffic]` banner and mismatched archive-path token.

### Tiếng Việt

Việc nhận diện dấu vết dựa trên các trường `Execution Path:` và `Installed RAM:` được neo theo dòng, cùng với watermark tự đánh dấu `fatetraffic` không phân biệt hoa thường trong cây thư mục lưu trữ. Bộ gộp @FATETRAFFIC ghi tên định danh của nó vào mọi tên tệp lưu trữ và thư mục cấp cao nhất, do đó mọi id `Info.txt` sau khi giải nén vẫn giữ nguyên token này.

Redline chuẩn bị loại trừ do thiếu banner của đối tượng vận hành và các khóa `FileLocation:` / `Build ID:`. Lumma chuẩn bị loại trừ do thiếu tiền tố gạch đầu dòng `-` trên mọi trường. Cấu trúc dữ liệu bare-KV liên quan `CSSigInfoStealer` bị loại trừ do thiếu watermark Lumma `(sig:UNIX.HEX)`; `CSRoyCloudInfoStealer` bị loại trừ do thiếu wrapper `RÔýĆløud`; `CSForzaTrafficStealer` bị loại trừ do thiếu banner `[CLÓUD CHANNEL - @forza_traffic]` và token đường dẫn lưu trữ không khớp.

## Observed log variants

### `v_d024ea83f42c5097088992d334489c0a`

- Format ID: `cs-fatetraffic-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: -
- Distribution channel: `@FATETRAFFIC`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d024ea83f42c5097088992d334489c0a/Info.txt)
- Sample SHA-256: `6cb64d5e3b3c6ff86a0273fe77c8787adf140e7a665ac926fb0a1c40f63c198d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time Zone`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- [CSSigInfoStealer](../cs-sig-info-stealer/)
- [CSRoyCloudInfoStealer](../cs-roy-cloud-info-stealer/)
- [CSForzaTrafficStealer](../cs-forza-traffic-stealer/)

## Sources

- <https://heroic.com/darkhive-breaches/fatetraffic-tg-arhontcloud-uploaded-by-a-telegram-user/>
- <https://www.brinztech.com/breach-alerts/brinztech-alert-new-fatetraffic-stealer-log-dump-exposes-2070-credentials>

Machine-readable record: [family.json](family.json)
