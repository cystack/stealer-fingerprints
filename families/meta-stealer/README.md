# MetaStealer

## Overview / Tổng quan

### English

MetaStealer logs. MetaStealer is a Redline fork; the IOC log
shape is similar but every key is renamed slightly (spaces
inserted, the canonical Redline `Operation System:` typo
dropped) and a couple of new fields appear (`Log from:`
distributor id, an IANA `Time Zone:` name instead of a UTC
offset).

### Tiếng Việt

Nhật ký của MetaStealer. MetaStealer là một biến thể tách nhánh (fork) từ Redline; cấu trúc dữ liệu của nhật ký IOC tương tự nhau nhưng mỗi khóa đều được đổi tên nhẹ (chèn thêm khoảng trắng, bỏ lỗi chính tả đặc trưng `Operation System:` của Redline gốc) và xuất hiện thêm một vài trường mới (`Log from:` là id nhà phân phối, tên `Time Zone:` theo chuẩn IANA thay vì độ lệch UTC).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Meta Stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| FTP and VPN client credentials | Thông tin xác thực FTP và VPN client |
| Telegram and Discord session data | Dữ liệu phiên đăng nhập Telegram và Discord |
| System fingerprint for victim profiling | Dấu vân tay hệ thống để lập hồ sơ nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

The combination of `Log from:` (distributor id) and an IANA
`Time Zone:` value (e.g. `Europe/Istanbul`) instead of a numeric
UTC offset is the cleanest separator from canonical Redline.

### Tiếng Việt

Sự kết hợp giữa `Log from:` (id nhà phân phối) và giá trị `Time Zone:` theo chuẩn IANA (ví dụ: `Europe/Istanbul`) thay vì độ lệch UTC dạng số là dấu hiệu phân biệt rõ ràng nhất so với Redline gốc.

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

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- <https://krakensecurity.com/metastealer-malware/>
- <https://www.sentinelone.com/labs/metastealer-redline-fork-meets-mac-users/>

Machine-readable record: [family.json](family.json)
