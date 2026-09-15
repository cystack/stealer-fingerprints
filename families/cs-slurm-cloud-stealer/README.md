# CSSlurmCloudStealer

## Overview / Tổng quan

### English

CSSlurmCloudStealer is a CyStack-coined identifier for a
.NET-based stealer that self-identifies with the single-line
banner ``Slurm Cloud | Private — The best logs on the market``
at the top of its ``system_info.txt`` file. Body vocabulary is
byte-for-byte identical to the sibling ``CSJohnDoeProject``
variant (same .NET-canonical field set, same duplicate
``RAM:`` key with battery mislabel, same ``=== ENVIRONMENT VARIABLES ===`` section trailer). Both channels appear to
resell a common private C# stealer template rather than
distinct forks; only the operator banner at the top of the
file differs.

The ``Slurm Private TG ArhontCorp`` and ``KATANA CLOUD PRIVATE TG ArhontCorp`` entries appear in public breach-data indexes.
ArhontCorp is the aggregator collective running the Slurm
Cloud panel. No public research has published a mapping to the
underlying builder; attribution is provisional pending a
threat-intel report on the private .NET template.

### Tiếng Việt

CSSlurmCloudStealer là định danh do CyStack đặt tên cho một mã độc đánh cắp thông tin dựa trên .NET, tự nhận diện bằng một banner một dòng ``Slurm Cloud | Private — The best logs on the market`` ở đầu tệp ``system_info.txt``. Từ vựng trong phần thân trùng khớp từng byte với biến thể liên quan ``CSJohnDoeProject`` (cùng bộ trường .NET-canonical, cùng khóa ``RAM:`` trùng lặp với lỗi gán nhãn pin, cùng phần kết thúc mục ``=== ENVIRONMENT VARIABLES ===``). Cả hai kênh dường như đang bán lại chung một mẫu (template) mã độc đánh cắp thông tin bằng C# thuộc sở hữu tư nhân thay vì là các nhánh (fork) riêng biệt; chỉ khác nhau ở banner của đối tượng vận hành ở đầu tệp.

Các mục ``Slurm Private TG ArhontCorp`` và ``KATANA CLOUD PRIVATE TG ArhontCorp`` xuất hiện trong các chỉ mục dữ liệu rò rỉ công khai. ArhontCorp là tập thể tổng hợp dữ liệu vận hành bảng điều khiển Slurm Cloud. Chưa có nghiên cứu công khai nào công bố ánh xạ tới công cụ xây dựng (builder) nền tảng; việc quy kết hiện mang tính tạm thời cho đến khi có báo cáo tình báo về mối đe dọa liên quan đến mẫu .NET tư nhân này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Slurm Cloud banner stealer`, `ArhontCorp Slurm Private slice`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, GPU, RAM, resolution, Windows version, .NET Runtime, CLR) | Dấu vân tay phần cứng máy và hệ điều hành (CPU, GPU, RAM, độ phân giải, phiên bản Windows, .NET Runtime, CLR) |
| Network identity (LAN IP, default gateway) | Danh tính mạng (địa chỉ IP LAN, cổng mặc định) |
| Account identity (Windows username, computer name) | Danh tính tài khoản (tên người dùng Windows, tên máy tính) |
| Full Windows Environment Variables dump | Bản dump toàn bộ biến môi trường Windows |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the ``Slurm Cloud | Private`` banner
substring and a line-anchored ``CLR Version:`` field key.
The pipe-separated banner phrase is the operator self-id
no other channel in the surveyed corpus uses it. Pair the
panel_brand with the sibling ``CSJohnDoeProject`` metadata
when triaging: both channels appear to resell a common
underlying builder, so overlap in victim hardware fingerprints
across the two panels is expected. Companion files in the
victim folder (browser exports, cookie dumps, wallet
artifacts) may provide more confident family attribution.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con banner ``Slurm Cloud | Private`` và khóa trường ``CLR Version:`` được neo theo dòng. Cụm từ banner phân tách bằng dấu gạch đứng (pipe) là định danh tự nhận của đối tượng vận hành — không có kênh nào khác trong tập dữ liệu khảo sát sử dụng cụm từ này. Khi rà soát phân loại, hãy đối chiếu panel_brand với siêu dữ liệu liên quan của ``CSJohnDoeProject``: cả hai kênh dường như đang bán lại chung một công cụ xây dựng (builder) nền tảng, do đó việc trùng lặp dấu vân tay phần cứng nạn nhân giữa hai bảng điều khiển là điều có thể dự đoán trước. Các tệp đi kèm trong thư mục nạn nhân (dữ liệu xuất từ trình duyệt, dump cookie, dấu vết ví) có thể cung cấp độ tin cậy cao hơn cho việc quy kết họ mã độc.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- [CSJohnDoeProjectStealer](../cs-john-doe-project-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
