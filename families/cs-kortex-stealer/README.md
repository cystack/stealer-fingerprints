# CSKortexStealer

## Overview / Tổng quan

### English

CSKortexStealer is a CyStack-coined identifier for the
`KORTEX // STEAL` `System.txt` log observed inside the
`APRIL 25 - 19977 LOGS` Telegram-pack distribution in
`<CC>_<IP>_<DD-MM-YY>/` victim folders alongside XFiles and
RedlineLikeStealer shapes. Format combines a dash-prefix
identity block with sectioned hardware records.

### Tiếng Việt

CSKortexStealer là định danh do CyStack đặt cho log `KORTEX // STEAL` `System.txt` được quan sát bên trong gói phân phối Telegram-pack `APRIL 25 - 19977 LOGS` trong các thư mục nạn nhân `<CC>_<IP>_<DD-MM-YY>/` cùng với các cấu trúc dữ liệu XFiles và RedlineLikeStealer. Định dạng này kết hợp một khối thông tin định danh có tiền tố dấu gạch ngang với các bản ghi phần cứng được chia theo mục.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **low**
- Canonical family: [lumma](../lumma/)
- Aliases: `KORTEX`, `KORTEX // STEAL`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The `- KORTEX // STEAL` line-anchored banner with two
forward slashes is the cleanest trigger. The dash-prefix
field opening (`- Path:`, `- ID:`, `- OS Version:`, etc.) is
shared with Lumma-shape variants but the KORTEX banner is
unique.

### Tiếng Việt

Dòng biểu ngữ `- KORTEX // STEAL` được neo theo dòng với hai dấu gạch chéo là chỉ báo kích hoạt rõ ràng nhất. Phần mở đầu trường có tiền tố dấu gạch ngang (`- Path:`, `- ID:`, `- OS Version:`, v.v.) cũng xuất hiện ở các biến thể có cấu trúc dữ liệu dạng Lumma, nhưng biểu ngữ KORTEX là duy nhất.

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

- [Lumma](../lumma/)
- [XFiles](../x-files/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
