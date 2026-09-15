# CSDaisyBonusProcSoftStealer

## Overview / Tổng quan

### English

CSDaisyBonusProcSoftStealer is a CyStack-coined identifier for
a heavily-stripped `information.txt` panel observed inside
`Daisy Private Cloud - <N> Pcs - <DD> <Mon> - Bonus.7z`
aggregator packs distributed by the `@UP_DAISYCLOUD` Telegram
channel. Per-victim folders follow a flat
`<CC><HWID-30-CHARS>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<XX>_<N>/`
naming convention (the country code is the leading two
letters, the HWID is a 30-character alphanumeric block, and
the trailing segment encodes a timestamp).

The body ships only two surviving sections from the underlying
panel: a 2-space-indented `[<PID>] <name>.exe` process list
and a `[Software]` Vidar-style section header followed by a
2-space-indented program inventory. No banner, no `IP / Country / HWID / Computer Name` field block, and no Redline /
Lumma / Vidar canonical anchors survive. The
leading-PID-bracket process-list shape is the reverse of Aura
Stealer and StealC, which emit process entries as `<name>.exe [<PID>]` (PID after the exe), so the two layouts remain structurally distinct.

Family attribution is provisional pending a published threat-intel mapping. Public reporting documents the `@UP_DAISYCLOUD`
channel as a Telegram credential-trading channel potentially
linked to RedLine Stealer, but the heavily-stripped Bonus-pack
body carries no Redline-canonical fields, so the Redline lineage evidence that the sibling `CSDaisyCloudStealer`
watermarked sibling supports for canonical
`UserInformation.txt` cannot be carried over. The Bonus pack
may ship victim records from a different underlying stealer
than the canonical Daisy Cloud channel, or the same stealer
with a different stripping configuration. The
`CSDaisyBonusProcSoftStealer` literal captures the discovery;
update this tracking profile if a public writeup later
identifies the underlying builder.

### Tiếng Việt

CSDaisyBonusProcSoftStealer là định danh do CyStack đặt cho một bảng điều khiển (panel) `information.txt` đã bị lược bỏ nặng, được quan sát bên trong các gói tổng hợp `Daisy Private Cloud - <N> Pcs - <DD> <Mon> - Bonus.7z` được phát tán qua kênh Telegram `@UP_DAISYCLOUD`. Các thư mục theo từng nạn nhân tuân theo quy ước đặt tên phẳng `<CC><HWID-30-CHARS>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<XX>_<N>/` (mã quốc gia là hai chữ cái đứng đầu, HWID là một khối chữ và số dài 30 ký tự, và đoạn cuối mã hóa một mốc thời gian).

Phần nội dung chỉ chứa hai phần còn sót lại từ panel gốc: một danh sách tiến trình `[<PID>] <name>.exe` được thụt lề 2 khoảng trắng và một tiêu đề phần kiểu Vidar `[Software]` theo sau là một bản kê chương trình được thụt lề 2 khoảng trắng. Không có banner, không có khối trường `IP / Country / HWID / Computer Name`, và không có neo chuẩn (canonical anchor) nào của Redline / Lumma / Vidar còn tồn tại. Cấu trúc dữ liệu danh sách tiến trình có ngoặc PID đứng trước là ngược lại với Aura Stealer và StealC, vốn tạo dữ liệu đầu ra các mục tiến trình dưới dạng `<name>.exe [<PID>]` (PID nằm sau tên tệp thực thi), vì vậy hai bố cục này vẫn tách biệt về mặt cấu trúc.

Việc quy kết họ mã độc vẫn chỉ mang tính tạm thời, chờ có bản đồ tình báo mối đe dọa được công bố. Các báo cáo công khai ghi nhận kênh `@UP_DAISYCLOUD` là một kênh Telegram giao dịch thông tin xác thực, có khả năng liên quan đến RedLine Stealer, nhưng phần nội dung của gói Bonus bị lược bỏ nặng này không mang bất kỳ trường chuẩn nào của Redline, do đó bằng chứng về nguồn gốc Redline mà dấu vết liên quan `CSDaisyCloudStealer` có đóng dấu watermark hỗ trợ cho `UserInformation.txt` chuẩn không thể được áp dụng sang trường hợp này. Gói Bonus có thể chứa các bản ghi nạn nhân từ một mã độc đánh cắp thông tin nền khác với kênh Daisy Cloud chuẩn, hoặc cùng một mã độc đánh cắp thông tin nhưng với cấu hình lược bỏ khác. Chuỗi ký tự `CSDaisyBonusProcSoftStealer` ghi lại quá trình phát hiện này; hãy cập nhật hồ sơ theo dõi này nếu sau này có bài viết công khai xác định được công cụ builder nền tảng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Daisy Private Cloud Bonus`, `@UP_DAISYCLOUD`
- Variants observed: **1**
- CyStack observations represented: **729**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Running-process inventory (PID-bracketed) | Bản kê tiến trình đang chạy (có ngoặc PID) |
| Installed-software inventory | Bản kê phần mềm đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

Confidence anchors: line-anchored `[Software]` section
header AND 10+ 2-space-indented `[<PID>] <name>.exe`
process-list lines. The leading-PID-bracket shape is the
strongest distinguishing signal: Aura and StealC emit
process entries as `<name>.exe [<PID>]` (reversed order),
and `CSSoftwareTailStealer` requires bare `<exe>.exe`
lines with no PID bracket, so those formats remain structurally distinct. The 10-line process-count threshold rejects
unrelated documents that mention a single `[123] foo.exe`
snippet in prose. The body carries no extractable victim
or device fields: the profile is labeling-only. Triage
logs from this family by reading the per-victim folder
name (`<CC><HWID>_<timestamp>`) for victim country, HWID,
and log-time, then cross-reference cred files in the same
folder for accounts and tokens.

### Tiếng Việt

Các mốc tin cậy: tiêu đề phần `[Software]` được neo theo dòng VÀ có từ 10 dòng trở lên trong danh sách tiến trình `[<PID>] <name>.exe` được thụt lề 2 khoảng trắng. Cấu trúc dữ liệu có ngoặc PID đứng trước là tín hiệu phân biệt mạnh nhất: Aura và StealC tạo dữ liệu đầu ra các mục tiến trình dưới dạng `<name>.exe [<PID>]` (thứ tự ngược lại), và `CSSoftwareTailStealer` yêu cầu các dòng `<exe>.exe` trần không có ngoặc PID, nên các định dạng này vẫn tách biệt về mặt cấu trúc. Ngưỡng tối thiểu 10 dòng tiến trình giúp loại bỏ các tài liệu không liên quan chỉ đề cập đến một đoạn trích `[123] foo.exe` đơn lẻ trong văn bản. Phần nội dung không chứa trường nạn nhân hoặc thiết bị nào có thể trích xuất: hồ sơ này chỉ dùng để gắn nhãn. Khi phân loại nhật ký thuộc họ mã độc này, hãy đọc tên thư mục theo từng nạn nhân (`<CC><HWID>_<timestamp>`) để lấy quốc gia nạn nhân, HWID và thời gian ghi nhật ký, sau đó đối chiếu chéo với các tệp thông tin xác thực trong cùng thư mục để lấy tài khoản và token.

## Observed log variants

### `v_44894012b6fae08ebaab05100ae16b12`

- Format ID: `cs-daisy-bonus-proc-soft-stealer`
- Observed filenames: `information.txt`
- Panel brand: `Daisy Private Cloud Bonus`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **unknown**
- Historical records represented: **729**
- Representative sample: [open sample](samples/v_44894012b6fae08ebaab05100ae16b12/sample.txt)
- Sample SHA-256: `5bb6d8cb7bbfb3b810686ed87f2e1ce3603083eb0efcd815bb24854e72051c32`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Software]`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |

## Related catalog profiles

- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)
- [CSSoftwareTailStealer](../cs-software-tail-stealer/)

## Observed distribution channels

- <https://t.me/UP_DAISYCLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
