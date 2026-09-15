# CSInzExtStealer

## Overview / Tổng quan

### English

CSInzExtStealer is a CyStack-coined identifier for a
snake_case `_info.json` panel observed inside
`!! 2025 NOV.part001.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/<HOST>$<USER>_<YYMMDD>_ <HHMMSS>/` per-victim folders. The body is a single flat
JSON object with eleven keys: `channel`, `pc_name`,
`pc_login`, `pc_info`, `path`, `uuid`, `sid`,
`inz_ext_count`, `python`, `timestamp`, `client_utc`.

The panel self-identifies as Python-built: `pc_info`
carries Python's `platform.platform()` dash-joined
string (`Windows-<release>-<build>-<service_pack>`) and
`python` is the absolute path to the interpreter that
produced the log (e.g. `C:\Users\<u>\AppData\Local\ Programs\Python\Python3127\python.exe`). The `channel`
value is an alphanumeric campaign / builder code (first
observed literal `A7-574`) the operator uses to retag
each victim - it is an internal campaign id rather than
a Telegram handle. The `inz_ext_count` key is the panel-unique marker; the `inz_` prefix is unusual and reads as
the panel author's shorthand for an installed-extension
or inzip-extension counter. Family attribution is
provisional pending a published threat-intel mapping for
this layout. The Python-runtime self-reference suggests
a relative of the Vietnamese-speaking-actor cluster
around PXA, Braodo, and Lone None, but none of those
families publishes this exact JSON schema.

### Tiếng Việt

CSInzExtStealer là định danh do CyStack đặt tên cho một bảng điều khiển (panel) dạng snake_case `_info.json` được quan sát thấy bên trong các gói tổng hợp (aggregator pack) kiểu `!! 2025 NOV.part001.rar`, nằm trong các thư mục theo từng nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/<HOST>$<USER>_<YYMMDD>_ <HHMMSS>/`. Phần thân là một đối tượng JSON phẳng duy nhất gồm mười một khóa: `channel`, `pc_name`, `pc_login`, `pc_info`, `path`, `uuid`, `sid`, `inz_ext_count`, `python`, `timestamp`, `client_utc`.

Bảng điều khiển tự nhận diện là được xây dựng bằng Python: `pc_info` mang chuỗi nối bằng dấu gạch ngang của `platform.platform()` trong Python (`Windows-<release>-<build>-<service_pack>`), và `python` là đường dẫn tuyệt đối đến trình thông dịch đã tạo ra bản ghi nhật ký này (ví dụ: `C:\Users\<u>\AppData\Local\ Programs\Python\Python3127\python.exe`). Giá trị `channel` là một mã chiến dịch/mã trình dựng (builder code) dạng chữ và số (giá trị đầu tiên được quan sát là `A7-574`) mà đối tượng vận hành sử dụng để gắn lại nhãn cho từng nạn nhân - đây là một mã chiến dịch nội bộ chứ không phải tên người dùng Telegram. Khóa `inz_ext_count` là dấu hiệu nhận diện riêng biệt của bảng điều khiển; tiền tố `inz_` khá bất thường và có thể hiểu là ký hiệu viết tắt của tác giả bảng điều khiển dùng cho bộ đếm tiện ích mở rộng đã cài đặt hoặc tiện ích mở rộng nằm trong tệp zip. Việc quy kết họ mã độc vẫn còn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố cho cấu trúc dữ liệu này. Việc tự tham chiếu đến môi trường thực thi Python cho thấy đây có thể là một biến thể có liên hệ với cụm tác nhân đe dọa nói tiếng Việt xoay quanh PXA, Braodo và Lone None, tuy nhiên không có họ mã độc nào trong số đó công bố chính xác lược đồ JSON này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `_info.json snake_case panel`
- Variants observed: **1**
- CyStack observations represented: **295**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (in sibling cred files) | Thông tin xác thực và cookie đã lưu trong trình duyệt (trong các tệp thông tin xác thực liên quan) |
| Windows machine identity (SID, machine UUID) | Thông tin định danh máy Windows (SID, UUID của máy) |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng hệ thống và ngôn ngữ/vùng miền |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `"inz_ext_count"` JSON-key
substring (the panel-unique marker) plus the `"pc_login"`
and `"client_utc"` snake_case keys as cross-confirmation.
The marker alone is enough to discriminate against any
currently cataloged format, but the snake_case pair
guards against fragments that quote the marker name in
prose (e.g. a write-up that references the field). All
three together cannot collide with Acreed (PascalCase
`PcName` / `IsElevator` shape) or any plain-text panel
format. During triage, treat family attribution as
unknown: the `_info.json` is panel metadata only, and
the underlying stealer cannot be identified from these
eleven fields alone. The per-victim folder ships sibling
credential / cookie files where any follow-on family
fingerprinting should run.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con khóa JSON `"inz_ext_count"` (dấu hiệu nhận diện riêng biệt của bảng điều khiển) kết hợp với hai khóa dạng snake_case `"pc_login"` và `"client_utc"` để xác nhận chéo. Chỉ riêng dấu hiệu này đã đủ để phân biệt với bất kỳ định dạng nào hiện đang được lưu trong danh mục, nhưng cặp khóa snake_case giúp phòng tránh trường hợp các đoạn trích dẫn tên trường này trong văn bản (ví dụ: một bài viết phân tích có tham chiếu đến trường đó). Cả ba yếu tố kết hợp lại không thể trùng lặp với Acreed (cấu trúc dữ liệu dạng PascalCase `PcName` / `IsElevator`) hay bất kỳ định dạng bảng điều khiển dạng văn bản thuần nào khác. Trong quá trình phân loại ban đầu (triage), cần coi việc quy kết họ mã độc là chưa xác định: `_info.json` chỉ là siêu dữ liệu của bảng điều khiển, và không thể xác định được mã độc đánh cắp thông tin cụ thể chỉ dựa trên mười một trường này. Thư mục theo từng nạn nhân đi kèm các tệp thông tin xác thực/cookie liên quan, là nơi cần thực hiện việc nhận diện dấu vết của họ mã độc tiếp theo.

## Observed log variants

### `v_c52c47cb76eaf34248ee6f663ac79205`

- Format ID: `cs-inz-ext-stealer`
- Observed filenames: `_info.json`
- Panel brand: `_info.json inz_ext_count schema`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **295**
- Representative sample: [open sample](samples/v_c52c47cb76eaf34248ee6f663ac79205/sample.txt)
- Sample SHA-256: `c0f891c635e29ba0908c8c9d920feaf518868b7c534b3f6179a63033d6e2ceba`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `client_utc`, `inz_ext_count`, `pc_login`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- [Acreed](../acreed/)
- [PXA Stealer](../pxa-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
