# CSLeakClickCloudCookiesStealer

## Overview / Tổng quan

### English

CSLeakClickCloudCookiesStealer is a CyStack-coined identifier
for a LOGS-pack per-victim folder-style IOC distributed through
the ``Leak Click Private`` / ``LEAK Click Cloud`` Telegram
channel. Observed inside the ``23-24 JUNE - 25597 LOGS.part01.rar``
aggregator pack at ``logs/<CC>- Leak Click Private -<HWID>- <TIMESTAMP>/`` victim folders. The folder-name convention
embeds the literal ``- Leak Click Private -`` operator label
between the country-code prefix and the alphanumeric HWID.

The pack ships a four-entry root: a ``Cookies/`` subdirectory
with Netscape cookies dumps per browser profile, a Windows
URL shortcut file ``Link LEAK Click Cloud.url`` pointing to
the operator's Telegram channel, a short-random-name ``.txt``
decoy file (6-8 char lowercase, e.g. ``GgcvKn.txt``), and an
empty-name packer DIR. The LOGS pack ships multiple stealer
families under a single archive convention, so the minimal
cookies-plus-channel-shortcut layout carries no remaining
family signal beyond ``cookie-jar exporter with LEAK Click channel promo file``. Family attribution is provisional
pending a published threat-intel mapping.

### Tiếng Việt

CSLeakClickCloudCookiesStealer là định danh do CyStack đặt cho một dấu hiệu nhận biết (IOC) dạng thư mục theo từng nạn nhân trong gói LOGS, được phân phối qua kênh Telegram ``Leak Click Private`` / ``LEAK Click Cloud``. Được quan sát bên trong gói tổng hợp ``23-24 JUNE - 25597 LOGS.part01.rar`` tại ``logs/<CC>- Leak Click Private -<HWID>- <TIMESTAMP>/`` thư mục nạn nhân. Quy ước đặt tên thư mục gắn nhãn nguyên văn của đối tượng vận hành ``- Leak Click Private -`` giữa tiền tố mã quốc gia và HWID chữ và số.

Gói này phân phối một cấu trúc gốc gồm bốn mục: một thư mục con ``Cookies/`` chứa các bản dump cookies định dạng Netscape theo từng hồ sơ trình duyệt, một tệp shortcut URL của Windows ``Link LEAK Click Cloud.url`` trỏ đến kênh Telegram của đối tượng vận hành, một tệp mồi nhử ``.txt`` tên ngẫu nhiên ngắn (6-8 ký tự chữ thường, ví dụ ``GgcvKn.txt``), và một DIR không tên của trình đóng gói. Gói LOGS phân phối nhiều họ mã độc đánh cắp thông tin dưới cùng một quy ước kho lưu trữ, do đó bố cục tối giản chỉ gồm cookies và shortcut kênh không còn mang tín hiệu nhận diện họ mã độc nào ngoài ``cookie-jar exporter with LEAK Click channel promo file``. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `LEAK Click Cloud cookies bundle`, `Leak Click Private folder-name cookies bundle`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser session cookies (Chromium / Firefox) exported as Netscape cookies.txt files per browser profile | Cookies phiên trình duyệt (Chromium / Firefox) được xuất dưới dạng tệp cookies.txt định dạng Netscape theo từng hồ sơ trình duyệt |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires either the folder-name literal ``Leak Click Private`` or a root-level ``Link LEAK Click Cloud.url``
file, plus a ``cookies`` subdirectory at root, plus at least
two canonical Netscape cookies.txt rows in the cred file body.
The dual-anchor design handles cases where the folder-name
has been renamed by the analyst but the operator channel-shortcut file survives. During triage, correlate with the
LOGS pack archive; the underlying harvester family is
unattributable from the cookies-only layout alone.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu hoặc nhãn nguyên văn ``Leak Click Private`` trong tên thư mục, hoặc một tệp ``Link LEAK Click Cloud.url`` ở cấp gốc, cùng với một thư mục con ``cookies`` ở gốc, cùng ít nhất hai dòng cookies.txt định dạng Netscape chuẩn trong nội dung tệp thông tin xác thực. Thiết kế điểm neo kép này xử lý các trường hợp tên thư mục đã bị chuyên gia phân tích đổi tên nhưng tệp shortcut kênh của đối tượng vận hành vẫn còn tồn tại. Trong quá trình phân loại ban đầu, hãy đối chiếu với kho lưu trữ gói LOGS; họ mã độc thu thập gốc không thể quy kết được chỉ từ bố cục chỉ chứa cookies.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSExceptionCookiesOnlyStealer](../cs-exception-cookies-only-stealer/)
- [CSBradmaxCookiesOnlyStealer](../cs-bradmax-cookies-only-stealer/)

## Related external families

- `CSDaisyCloudCookiesOnlyStealer`
- `CSBradmaxAppCookiesStealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
