# CSMultiAppCredBundleStealer

## Overview / Tổng quan

### English

CSMultiAppCredBundleStealer is a CyStack-coined identifier
for a per-victim application-loot bundle observed inside the
``16,17 APRIL - 27206 LOGS.part01.rar`` aggregator pack at
``<32-char alphanumeric>_<TIMESTAMP>/`` victim folders. The
pack ships an 11-application subdirectory tree covering the
credential-manager, VPN, FTP, chat, cloud, and gaming
application slots that stealer families commonly harvest:
``AnyDesk``, ``Azure``, ``Bitwarden``, ``Discord``,
``FileZilla``, ``FTPGetter``, ``OpenVPN``, ``ProtonVPN``,
``Steam``, ``Telegram``, ``TotalCommander``.

The ``Azure/credentials`` filename is a panel mislabel: the
file body is a boto-style AWS credentials INI file (with
``[default]`` block, ``aws_access_key_id``,
``aws_secret_access_key``), not an Azure resource-manager
token file. The stealer's harvest routine likely grabbed
``%USERPROFILE%\.aws\credentials`` and dropped it under an
``Azure/`` subdir because both cloud vendors share the
"cloud" category slot in the panel harvest configuration.
Multiple stealer families target subsets of this application
set (Redline, Vidar, Lumma, StealC, Meta all harvest
FileZilla / Discord / Telegram / Steam), so the underlying
harvester could be any of them. Family attribution is
provisional pending a published threat-intel mapping.

### Tiếng Việt

CSMultiAppCredBundleStealer là định danh do CyStack đặt cho một bundle chiến lợi phẩm ứng dụng theo từng nạn nhân, được phát hiện bên trong gói tổng hợp ``16,17 APRIL - 27206 LOGS.part01.rar`` tại các thư mục nạn nhân ``<32-char alphanumeric>_<TIMESTAMP>/``. Gói này chứa một cây thư mục con gồm 11 ứng dụng bao phủ các slot ứng dụng quản lý thông tin xác thực, VPN, FTP, chat, cloud và gaming mà các họ mã độc đánh cắp thông tin thường thu thập: ``AnyDesk``, ``Azure``, ``Bitwarden``, ``Discord``, ``FileZilla``, ``FTPGetter``, ``OpenVPN``, ``ProtonVPN``, ``Steam``, ``Telegram``, ``TotalCommander``.

Tên tệp ``Azure/credentials`` là một nhãn gắn sai trên panel: nội dung tệp thực chất là một tệp INI chứa thông tin xác thực AWS theo kiểu boto (có khối ``[default]``, ``aws_access_key_id``, ``aws_secret_access_key``), không phải tệp token của Azure resource-manager. Rất có thể quy trình thu thập của mã độc đánh cắp thông tin này đã lấy ``%USERPROFILE%\.aws\credentials`` rồi lưu vào dưới thư mục con ``Azure/`` vì cả hai nhà cung cấp cloud này cùng dùng chung slot phân loại "cloud" trong cấu hình thu thập của panel. Nhiều họ mã độc đánh cắp thông tin nhắm đến các tập con của bộ ứng dụng này (Redline, Vidar, Lumma, StealC, Meta đều thu thập FileZilla / Discord / Telegram / Steam), do đó công cụ thu thập thực sự có thể là bất kỳ họ nào trong số này. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có bản đồ threat-intel được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Multi-app credentials bundle`, `Cloud + VPN + FTP + chat + gaming loot bundle`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Cloud provider credentials (AWS access key + secret from ``~/.aws/credentials`` dropped under ``Azure/``) | Thông tin xác thực nhà cung cấp cloud (khóa truy cập AWS + khóa bí mật lấy từ ``~/.aws/credentials`` được lưu dưới thư mục ``Azure/``) |
| Password manager vaults (Bitwarden) | Kho lưu trữ của trình quản lý mật khẩu (Bitwarden) |
| VPN configurations and credentials (OpenVPN, ProtonVPN) | Cấu hình và thông tin xác thực VPN (OpenVPN, ProtonVPN) |
| FTP client credentials (FileZilla sitemanager.xml, FTPGetter, TotalCommander wcx_ftp.ini) | Thông tin xác thực ứng dụng FTP (FileZilla sitemanager.xml, FTPGetter, TotalCommander wcx_ftp.ini) |
| Chat app session tokens (Discord Local Storage tokens, Telegram tdata session bundles) | Token phiên của ứng dụng chat (token Local Storage của Discord, bundle phiên tdata của Telegram) |
| Remote-desktop session identifiers (AnyDesk) | Định danh phiên remote-desktop (AnyDesk) |
| Gaming session tokens (Steam JWT session, config.vdf) | Token phiên gaming (JWT phiên Steam, config.vdf) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires at least 5 of 11 known application-loot subdir names at root (``AnyDesk``, ``Azure``,
``Bitwarden``, ``Discord``, ``FileZilla``, ``FTPGetter``,
``OpenVPN``, ``ProtonVPN``, ``Steam``, ``Telegram``,
``TotalCommander``) plus a strict allow-list rejecting
any other content-carrying root entry. The 5-of-11
minimum guards against generic 1-2-app folders that might
trigger on a single sibling category. During triage, the
``Azure/credentials`` AWS INI file is a high-value pivot
point (cloud IAM credentials imply full account access).
Companion Discord tokens and Telegram tdata sessions in
sibling subdirs offer account-takeover paths that the
analyst should rotate immediately.

### Tiếng Việt

Việc lấy dấu vân tay yêu cầu ít nhất 5 trong số 11 tên thư mục con chứa chiến lợi phẩm ứng dụng đã biết ở gốc (``AnyDesk``, ``Azure``, ``Bitwarden``, ``Discord``, ``FileZilla``, ``FTPGetter``, ``OpenVPN``, ``ProtonVPN``, ``Steam``, ``Telegram``, ``TotalCommander``), kèm theo danh sách cho phép nghiêm ngặt loại bỏ mọi mục nội dung khác ở gốc không nằm trong danh sách. Ngưỡng tối thiểu 5/11 giúp ngăn nhận diện sai trên các thư mục chung chung chỉ chứa 1-2 ứng dụng vốn có thể khớp với một danh mục liên quan đơn lẻ. Trong quá trình phân loại ban đầu, tệp INI AWS ``Azure/credentials`` là điểm xoay có giá trị cao (thông tin xác thực IAM của cloud đồng nghĩa với quyền truy cập tài khoản đầy đủ). Các token Discord và phiên tdata của Telegram trong các thư mục con liên quan tạo điều kiện chiếm đoạt tài khoản; nhà phân tích cần thu hồi hoặc vô hiệu hóa các phiên này và cấp lại thông tin xác thực liên quan ngay lập tức.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1552.001](https://attack.mitre.org/techniques/T1552/001/) | Credentials In Files | Thông tin xác thực trong tệp |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1552.004](https://attack.mitre.org/techniques/T1552/004/) | Private Keys | Khóa riêng |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
