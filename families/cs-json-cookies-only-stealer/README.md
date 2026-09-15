# CSJsonCookiesOnlyStealer

## Overview / Tổng quan

### English

CSJsonCookiesOnlyStealer is a CyStack-coined identifier for
a LOGS2-pack per-victim folder-style IOC shipping a minimal
``cookies/`` subdirectory with JSON-array cookie exports
(the Cookie-Editor / EditThisCookie extension format used
by many post-processing tools). Observed inside the
``23-24 JUNE - 25597 LOGS2.part01.rar`` aggregator pack at
``<CC>- -<HWID>-<TIMESTAMP>/`` victim folders where the
folder name uses the same space-padded convention as the
sibling ``CSExceptionCookiesOnly`` LOGS-pack variant.

The per-profile cookie file uses a
``<Browser>_<Profile>_json.txt`` filename with the ``_json``
infix, and the body is a JSON array of cookie objects with
``domain`` / ``expirationDate`` / ``httpOnly`` / ``name`` /
``path`` / ``secure`` / ``value`` keys. The stealer likely
uses a Chromium ``Cookies`` SQLite export routine that
serialises directly to JSON rather than to the Netscape
flat-file layout. Family attribution is provisional pending
a published threat-intel mapping.

### Tiếng Việt

CSJsonCookiesOnlyStealer là định danh do CyStack đặt tên cho một dấu vết dạng thư mục theo từng nạn nhân trong gói LOGS2-pack, chỉ chứa một thư mục con tối giản ``cookies/`` với các tệp xuất cookie dạng mảng JSON (định dạng của tiện ích mở rộng Cookie-Editor / EditThisCookie được nhiều công cụ hậu xử lý sử dụng). Dấu vết này được quan sát bên trong gói tổng hợp ``23-24 JUNE - 25597 LOGS2.part01.rar`` tại các thư mục nạn nhân ``<CC>- -<HWID>-<TIMESTAMP>/``, trong đó tên thư mục sử dụng cùng quy ước đệm khoảng trắng như biến thể LOGS-pack liên quan ``CSExceptionCookiesOnly``.

Tệp cookie theo từng hồ sơ (profile) sử dụng tên tệp dạng ``<Browser>_<Profile>_json.txt`` với hậu tố ``_json``, và nội dung là một mảng JSON gồm các đối tượng cookie với các khóa ``domain`` / ``expirationDate`` / ``httpOnly`` / ``name`` / ``path`` / ``secure`` / ``value``. Mã độc đánh cắp thông tin này có khả năng sử dụng một quy trình xuất cơ sở dữ liệu SQLite ``Cookies`` của Chromium, tuần tự hóa trực tiếp thành JSON thay vì theo bố cục tệp phẳng Netscape. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ được xác nhận qua một bản đồ tình báo mối đe dọa đã công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `JSON cookies-only bundle`, `Cookie-Editor export format cookies bundle`, `_json.txt suffix per-profile cookie bundle`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser session cookies (Chromium) exported as JSON arrays per browser profile | Cookie phiên trình duyệt (Chromium) được xuất dưới dạng mảng JSON theo từng hồ sơ trình duyệt |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires a ``cookies`` subdirectory at root
and no other content-carrying siblings (any ``system.txt``
or ``information.txt`` panel-placeholder must be empty),
plus at least two JSON cookie objects in the cred file body
that carry both ``domain`` and ``name`` keys. During triage,
correlate the ``<Browser>_<Profile>_json.txt`` filename
convention and the space-padded folder name with the LOGS2
pack archive to identify the redistributor; the underlying
harvester family is unattributable from the cookies-only
layout alone.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu có một thư mục con ``cookies`` ở gốc và không có các tệp/dấu vết liên quan nào khác mang nội dung (mọi tệp giữ chỗ giao diện điều khiển như ``system.txt`` hoặc ``information.txt`` phải rỗng), cùng với ít nhất hai đối tượng cookie JSON trong nội dung tệp thông tin xác thực có mang cả hai khóa ``domain`` và ``name``. Trong quá trình phân loại ban đầu, cần đối chiếu quy ước tên tệp ``<Browser>_<Profile>_json.txt`` và tên thư mục đệm khoảng trắng với gói lưu trữ LOGS2 pack để xác định đối tượng phát tán lại; họ mã độc thu thập dữ liệu gốc không thể được quy kết chỉ dựa trên bố cục chỉ chứa cookie này.

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
- [CSLeakClickCloudCookiesStealer](../cs-leak-click-cloud-cookies-stealer/)

## Related external families

- `CSDaisyCloudCookiesOnlyStealer`
- `CSBradmaxAppCookiesStealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
