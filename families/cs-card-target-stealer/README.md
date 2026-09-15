# CSCardTargetStealer

## Overview / Tổng quan

### English

CSCardTargetStealer is a CyStack-coined identifier for a
4- or 5-line `CN/DATE/NAME/TARGET[/CVV]` credit-card
cred-file shape distributed inside `@BRADLOGS / BRADMAX`
aggregator packs. Observed in `!! 2025 NOV.part001.rar`
at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/CreditCards/ CC_Edge_Profile <N>.txt` and in the sibling
`!! 2025 MARCH.part001.rar` packs at
`[<TAG>]@MAXERSTE (@BRADMAX) (<NN>)/CreditCards/ CC_Chrome_Profile <N>.txt` victim folders. Each cred
file holds exactly one card record in a per-browser-profile split (50-80 byte file size), so a typical
victim folder ships multiple `CC_<Browser>_Profile 1.txt` / `2.txt` / `3.txt` files alongside any saved-card variants from other browser profiles.

The label sequence in uppercase casing
(`CN:` / `DATE:` / `NAME:` / `TARGET:` and an optional
`CVV:`) is the disambiguating signal. `CN:` is short
for card number (16-digit PAN), `DATE:` carries the
expiry in `M/YYYY` or `MM/YYYY` form, `NAME:` is the
cardholder name (frequently empty when the browser
stored only the number), `TARGET:` is the merchant or
website where the card was used, and the optional
`CVV:` is the 3-digit security code. The panel drops
the `CVV:` line entirely when the browser stored only
the PAN and expiry, producing a 4-line block ending at
`TARGET:`. Family attribution is provisional pending a
published threat-intel mapping for this layout. The
format is distinct from the Millenium RAT
`CreditCards.txt` (``Browser/Name/Number/Expire``
labels with the ``------ Credit Cards ------`` banner) and from the canonical PXA Stealer credit-card dump (per-browser JSON in the PXA Telegram
captions).

### Tiếng Việt

CSCardTargetStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu tệp thông tin xác thực thẻ tín dụng gồm 4 hoặc 5 dòng `CN/DATE/NAME/TARGET[/CVV]`, được phân phối bên trong các gói tổng hợp `@BRADLOGS / BRADMAX`. Được ghi nhận trong `!! 2025 NOV.part001.rar` tại `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/CreditCards/ CC_Edge_Profile <N>.txt` và trong các gói `!! 2025 MARCH.part001.rar` liên quan tại `[<TAG>]@MAXERSTE (@BRADMAX) (<NN>)/CreditCards/ CC_Chrome_Profile <N>.txt` thư mục nạn nhân. Mỗi tệp thông tin xác thực chỉ chứa đúng một bản ghi thẻ theo cách tách riêng cho từng hồ sơ trình duyệt (kích thước tệp 50-80 byte), vì vậy một thư mục nạn nhân điển hình chứa nhiều tệp `CC_<Browser>_Profile 1.txt` / `2.txt` / `3.txt` cùng với các biến thể thẻ đã lưu từ những hồ sơ trình duyệt khác.

Chuỗi nhãn viết hoa (`CN:` / `DATE:` / `NAME:` / `TARGET:` và tùy chọn `CVV:`) là tín hiệu để phân biệt. `CN:` là viết tắt của số thẻ (PAN 16 chữ số), `DATE:` chứa ngày hết hạn theo dạng `M/YYYY` hoặc `MM/YYYY`, `NAME:` là tên chủ thẻ (thường trống khi trình duyệt chỉ lưu số thẻ), `TARGET:` là đơn vị bán hàng hoặc trang web nơi thẻ được sử dụng, và `CVV:` (tùy chọn) là mã bảo mật 3 chữ số. Bảng điều khiển sẽ bỏ hoàn toàn dòng `CVV:` khi trình duyệt chỉ lưu PAN và ngày hết hạn, tạo ra khối 4 dòng kết thúc tại `TARGET:`. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có tài liệu tình báo mối đe dọa công khai ánh xạ cấu trúc dữ liệu này. Định dạng này khác biệt với `CreditCards.txt` của Millenium RAT (các nhãn ``Browser/Name/Number/Expire`` kèm banner ``------ Credit Cards ------``) và khác với bản dump thẻ tín dụng chuẩn của PXA Stealer (dữ liệu JSON theo từng trình duyệt trong phần chú thích Telegram của PXA).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX CC_Edge_Profile cred-file split`, `BRADMAX CC_Chrome_Profile cred-file split`, `4-line CN/DATE/NAME/TARGET credit-card block`, `5-line CN/DATE/NAME/TARGET/CVV credit-card block`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Saved credit cards from Microsoft Edge browser profiles | Thẻ tín dụng đã lưu từ các hồ sơ trình duyệt Microsoft Edge |
| Saved credit cards from Chrome browser profiles | Thẻ tín dụng đã lưu từ các hồ sơ trình duyệt Chrome |
| Card PAN (CN), expiry (DATE), cardholder name (NAME) | Số thẻ PAN (CN), ngày hết hạn (DATE), tên chủ thẻ (NAME) |
| Merchant or website where the card was used (TARGET) | Đơn vị bán hàng hoặc trang web nơi thẻ được sử dụng (TARGET) |
| Card verification value (CVV), when present | Mã xác minh thẻ (CVV), nếu có |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires a single 4- or 5-line block
matching `CN: / DATE: / NAME: / TARGET: [/ CVV:]` with
the specific uppercase casing. The trailing `CVV:`
line is optional: a 4-line block ending at `TARGET:`
covers cards saved without a security code. One match
is sufficient because each cred file holds exactly one
card. The `CN:` + `TARGET:` label pair is unique
across this catalog: Millenium RAT uses
`Browser/Name/Number/Expire` and ships its dashed-banner header; canonical
PXA Stealer ships cards as JSON in Telegram captions,
not as 4- or 5-line text blocks. During triage, treat
the IOC as a confirmed saved-card exfiltration even
when individual fields (`NAME:`, `TARGET:`, `CVV:`)
are blank or absent: the browser may have stored only
partial card data, but the PAN and expiry pair is
sufficient to flag the victim for downstream review
and adding the CVV (when present) makes the record
directly usable for card-not-present fraud.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu một khối duy nhất gồm 4 hoặc 5 dòng khớp với `CN: / DATE: / NAME: / TARGET: [/ CVV:]` theo đúng kiểu viết hoa cụ thể. Dòng `CVV:` ở cuối là tùy chọn: khối 4 dòng kết thúc tại `TARGET:` áp dụng cho các thẻ được lưu mà không có mã bảo mật. Chỉ cần một kết quả khớp là đủ vì mỗi tệp thông tin xác thực chỉ chứa đúng một thẻ. Cặp nhãn `CN:` + `TARGET:` là duy nhất trong toàn bộ danh mục này: Millenium RAT sử dụng `Browser/Name/Number/Expire` và có tiêu đề banner dạng gạch ngang riêng; PXA Stealer chuẩn phân phối thẻ dưới dạng JSON trong phần chú thích Telegram, không phải khối văn bản 4 hoặc 5 dòng. Trong quá trình phân loại ưu tiên xử lý, cần coi đây là dấu hiệu đã xác nhận việc đưa dữ liệu thẻ đã lưu ra ngoài ngay cả khi một số trường riêng lẻ (`NAME:`, `TARGET:`, `CVV:`) trống hoặc không có: trình duyệt có thể chỉ lưu dữ liệu thẻ một phần, nhưng cặp PAN và ngày hết hạn đã đủ để gắn cờ nạn nhân cho việc rà soát tiếp theo, và nếu có thêm CVV thì bản ghi có thể sử dụng trực tiếp cho gian lận không cần xuất trình thẻ (card-not-present fraud).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)

## Related external families

- `millenium-rat`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
