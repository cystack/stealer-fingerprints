# CSBradmaxCategoryStealer

## Overview / Tổng quan

### English

CSBradmaxCategoryStealer is a CyStack-coined identifier
for a BRADMAX-redistributed victim folder that ships the
4-category subdirectory layout
(`Browsers/Discord/Files/System`) at root and no
companion system-info file at the root level. Observed
inside `!! 2025 JULY.part001.rar` at
`[<CC>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders.

The 4-subdir shape is a generic Stealerium-fork
categorical layout used by multiple builders. The
BRADMAX redistribution strips per-builder branding from
the System/ subdirectory contents before repacking, so
the underlying family cannot be pinned from the root
listing alone. The cred-file selector often picks an
unrelated harvested file from inside `Files/` (e.g. a
victim's pip `AUTHORS.txt` swept up alongside the real
stealer drop) so the folder root alone carries no useful per-victim
fields. Family attribution is
provisional pending a published threat-intel mapping
for this BRADMAX-distributed layout.

### Tiếng Việt

CSBradmaxCategoryStealer là định danh do CyStack đặt cho một thư mục nạn nhân được phân phối lại qua BRADMAX, sử dụng bố cục thư mục con gồm 4 danh mục (`Browsers/Discord/Files/System`) ở thư mục gốc và không có tệp thông tin hệ thống đi kèm ở cấp gốc. Được quan sát bên trong `!! 2025 JULY.part001.rar` tại `[<CC>]@BRADLOGS (BRADMAX) (<NN>)/` thư mục nạn nhân.

Cấu trúc 4 thư mục con này là một bố cục phân loại chung của các bản fork Stealerium, được nhiều bộ công cụ builder sử dụng. Việc phân phối lại qua BRADMAX loại bỏ dấu hiệu nhận diện riêng của từng builder khỏi nội dung thư mục con System/ trước khi đóng gói lại, do đó không thể xác định chính xác họ mã độc gốc chỉ dựa vào danh sách thư mục gốc. Bộ chọn tệp thông tin xác thực thường lấy nhầm một tệp thu thập được không liên quan bên trong `Files/` (ví dụ: tệp pip `AUTHORS.txt` của nạn nhân bị thu gom cùng với dữ liệu đánh cắp thực sự), do đó riêng thư mục gốc không mang lại trường dữ liệu hữu ích nào theo từng nạn nhân. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có một bản đồ quy kết tình báo mối đe dọa được công bố cho bố cục phân phối qua BRADMAX này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 4-category victim folder`, `@BRADLOGS Browsers/Discord/Files/System layout`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials, cookies, autofills (inside Browsers/) | Thông tin xác thực, cookie, dữ liệu tự động điền được trình duyệt lưu (bên trong Browsers/) |
| Discord LevelDB session tokens (inside Discord/) | Token phiên Discord dạng LevelDB (bên trong Discord/) |
| Desktop / Documents / Downloads files (inside Files/) | Tệp trong Desktop / Documents / Downloads (bên trong Files/) |
| Victim system info (inside System/) | Thông tin hệ thống nạn nhân (bên trong System/) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires all four canonical subdirectory
names (`Browsers`, `Discord`, `Files`, `System`) at
folder root AND a `BRADLOGS` or `BRADMAX` token in the
system_path. The path-side anchor excludes generic Stealerium-fork 4-category layouts
distributed through unrelated channels. During triage,
inspect the `System/` subdirectory contents for the
underlying stealer banner: canonical Lumma, Phantom,
Stealerium, and BlackGuard all emit recognisable
self-IDs inside the system-info text file that
lives under `System/`, but the BRADMAX repacker's
naming on the system file is not consistent enough to
fingerprint at the folder root.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu phải có đủ cả bốn tên thư mục con chuẩn (`Browsers`, `Discord`, `Files`, `System`) ở thư mục gốc VÀ có token `BRADLOGS` hoặc `BRADMAX` trong system_path. Yếu tố neo dựa trên đường dẫn này giúp loại trừ các bố cục 4 danh mục chung của bản fork Stealerium được phân phối qua các kênh không liên quan. Trong quá trình phân loại ban đầu, cần kiểm tra nội dung thư mục con `System/` để tìm banner của mã độc đánh cắp thông tin gốc: các họ Lumma, Phantom, Stealerium và BlackGuard chuẩn đều tạo dữ liệu đầu ra là các tự nhận diện có thể phân biệt được bên trong tệp văn bản thông tin hệ thống nằm dưới `System/`, nhưng cách đặt tên tệp hệ thống của bộ đóng gói lại BRADMAX không đủ nhất quán để nhận diện dấu vết ngay tại thư mục gốc.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSSoftHostStealer](../cs-soft-host-stealer/)
- [CSWifiBackslashNStealer](../cs-wifi-backslash-n-stealer/)
- [CSCcApostropheStealer](../cs-cc-apostrophe-stealer/)

## Related external families

- `programs-system-bundle`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
