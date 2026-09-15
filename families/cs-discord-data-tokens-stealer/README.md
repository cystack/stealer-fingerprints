# CSDiscordDataTokensStealer

## Overview / Tổng quan

### English

CSDiscordDataTokensStealer is a CyStack-coined identifier for
a stripped victim-folder shape observed inside `!! 2025 JULY.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/DiscordData/` subfolders.
The folder root carries `tokens.txt` plus optionally a
`leveldb/` companion subdirectory and the BRADMAX repacker's
empty-named DIR artifact, with no companion system-info file,
no browser-credential dump, no wifi or installed-apps export.

`tokens.txt` is the verbatim Discord LevelDB sstable content
lifted from `%AppData%/discord/Local Storage/leveldb/*.ldb`
and concatenated into one binary blob. Sample files run
hundreds of kilobytes and decode as high-entropy CJK mojibake
when interpreted as UTF-8 (random bytes forming valid 3-byte
UTF-8 sequences in the ideograph range). When the `leveldb/`
sidecar is present it holds the per-file LevelDB pages
(`*.ldb` / `*.log` / `MANIFEST-*` / `CURRENT`) the panel
copied verbatim from the victim's Chromium `Local Storage/leveldb/` directory; the `tokens.txt` blob is the same
data concatenated for downstream convenience. The panel
exported the raw leveldb pages rather than the parsed
`<userId>.<timestamp>.<hmac>` token string that most
documented Discord-token stealers emit, so the operator runs
the leveldb parse offline.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a stealer that emits this
exact `DiscordData/tokens.txt` single-binary-file shape.
Documented sibling layouts write parsed-token text under
different folder names (PupkinStealer `Grabbers/Discord/`,
BlackGuard `Discord/`, Bizfum `Account-Tokens.txt`, Octalyn
`Discord/Tokens.txt`) or capture the whole leveldb directory
verbatim under the canonical `Local Storage/leveldb/` path.
The `DiscordData/` folder name and the single-binary-blob
layout are a private builder choice the BRADMAX repacker
preserved on its way through the aggregator.

### Tiếng Việt

CSDiscordDataTokensStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu thư mục nạn nhân đã bị lược bớt, được quan sát bên trong các gói tổng hợp `!! 2025 JULY.part001.rar` BRADMAX / `@BRADLOGS` tại các thư mục con `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/DiscordData/`.
Thư mục gốc chứa `tokens.txt` cùng với, tùy trường hợp, một thư mục con đi kèm `leveldb/` và dấu vết DIR không tên do bộ đóng gói lại BRADMAX tạo ra, không có tệp thông tin hệ thống đi kèm, không có bản trích xuất thông tin xác thực trình duyệt, không có dữ liệu xuất wifi hay danh sách ứng dụng đã cài đặt.

`tokens.txt` là nội dung nguyên văn của các sstable LevelDB của Discord được lấy từ `%AppData%/discord/Local Storage/leveldb/*.ldb` và ghép nối thành một khối nhị phân duy nhất. Các tệp mẫu có kích thước hàng trăm kilobyte và khi diễn giải theo UTF-8 sẽ giải mã thành chuỗi mojibake CJK có độ ngẫu nhiên cao (các byte ngẫu nhiên tạo thành chuỗi UTF-8 3-byte hợp lệ trong dải ký tự biểu ý). Khi có tệp phụ `leveldb/` đi kèm, tệp này chứa các trang LevelDB theo từng tệp riêng lẻ (`*.ldb` / `*.log` / `MANIFEST-*` / `CURRENT`) mà bảng điều khiển đã sao chép nguyên văn từ thư mục Chromium `Local Storage/leveldb/` của nạn nhân; khối dữ liệu `tokens.txt` chính là cùng một dữ liệu đó nhưng được ghép nối lại để thuận tiện xử lý về sau. Bảng điều khiển đã xuất trực tiếp các trang leveldb thô thay vì chuỗi token Discord đã được phân tích cú pháp `<userId>.<timestamp>.<hmac>` như hầu hết các mã độc đánh cắp token Discord đã được ghi nhận vẫn tạo ra, do đó đối tượng vận hành phải tự chạy việc phân tích leveldb ở chế độ ngoại tuyến.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ tình báo về mối đe dọa được công bố cho cấu trúc dữ liệu này. Các báo cáo công khai và danh mục cộng đồng hiện chưa ghi nhận mã độc đánh cắp thông tin nào tạo ra chính xác cấu trúc dữ liệu một-tệp-nhị-phân-duy-nhất `DiscordData/tokens.txt` này.
Các cấu trúc dữ liệu liên quan đã được ghi nhận thường ghi văn bản token đã phân tích cú pháp dưới các tên thư mục khác nhau (PupkinStealer `Grabbers/Discord/`, BlackGuard `Discord/`, Bizfum `Account-Tokens.txt`, Octalyn `Discord/Tokens.txt`) hoặc chụp lại nguyên văn toàn bộ thư mục leveldb dưới đường dẫn chuẩn `Local Storage/leveldb/`.
Tên thư mục `DiscordData/` và cấu trúc dữ liệu khối nhị phân đơn lẻ là lựa chọn riêng của bên xây dựng công cụ mà bộ đóng gói lại BRADMAX đã giữ nguyên trong quá trình đi qua bộ tổng hợp.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX DiscordData/tokens.txt single-blob pack`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Discord authentication tokens harvested from leveldb | Token xác thực Discord được thu thập từ leveldb |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires (a) the IOC folder basename equals
`DiscordData` (case-insensitive), (b) `tokens.txt` in the
folder root, (c) every other root entry is one of the
allowed siblings (`leveldb` subdirectory or the empty-named packer DIR artifact), and (d) the system_path id
contains a `BRADLOGS` or `BRADMAX` token. The allowlist
(rather than a count cap) keeps the fingerprint specific as
new wrapper-side artifacts surface without dropping the
constraint that no unrelated cred / system file appears
at root. The folder-name plus path-side BRADMAX anchor
distinguishes generic Discord-loot folders distributed
through unrelated channels.

During triage, treat this label as a "BRADMAX victim where
the panel exported only the raw Discord leveldb dump"
marker: the underlying stealer builder is not identifiable
from this 1-file shape alone, only the BRADMAX
distribution channel is. To extract tokens from the
binary blob, decode as leveldb and grep for Discord's
`dQw4w9WgXcQ` encryption prefix or the parsed
`<userId>.<timestamp>.<hmac>` shape, the same way an
incident responder would handle a stolen `*.ldb` file.

### Tiếng Việt

Việc nhận diện đặc trưng yêu cầu (a) tên cơ sở của thư mục IOC bằng `DiscordData` (không phân biệt chữ hoa/thường), (b) `tokens.txt` nằm ở thư mục gốc, (c) mọi mục khác ở gốc đều thuộc một trong các dấu vết liên quan được cho phép (thư mục con `leveldb` hoặc dấu vết DIR không tên của bộ đóng gói), và (d) id system_path chứa token `BRADLOGS` hoặc `BRADMAX`. Cách tiếp cận danh sách cho phép (thay vì đặt giới hạn số lượng) giúp giữ tính đặc trưng của việc nhận diện khi có thêm các dấu vết mới từ phía trình đóng gói xuất hiện, mà không làm mất đi ràng buộc rằng không có tệp thông tin xác thực / hệ thống không liên quan nào xuất hiện ở gốc. Tên thư mục kết hợp với điểm neo phía đường dẫn của BRADMAX giúp phân biệt với các thư mục dữ liệu đánh cắp Discord thông thường được phát tán qua các kênh không liên quan.

Trong quá trình phân loại ban đầu, nên coi nhãn này như một dấu hiệu "nạn nhân của BRADMAX mà bảng điều khiển chỉ xuất ra bản dump leveldb thô của Discord": mã độc đánh cắp thông tin gốc không thể xác định chỉ dựa trên cấu trúc dữ liệu một-tệp này, mà chỉ xác định được kênh phát tán BRADMAX. Để trích xuất token từ khối nhị phân, cần giải mã dưới dạng leveldb và tìm tiền tố mã hóa `dQw4w9WgXcQ` của Discord hoặc cấu trúc dữ liệu đã phân tích cú pháp `<userId>.<timestamp>.<hmac>`, theo cách tương tự như cách một đội ứng cứu sự cố xử lý một tệp `*.ldb` bị đánh cắp.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSWifiBackslashNStealer](../cs-wifi-backslash-n-stealer/)
- [CSCcApostropheStealer](../cs-cc-apostrophe-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
