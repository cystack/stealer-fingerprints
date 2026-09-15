# Lumma

## Overview / Tổng quan

### English

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

### Tiếng Việt

Nhật ký Lumma C2 (LummaC2). Panel ghi `System.txt` với danh sách kiểu YAML có dấu gạch đầu dòng (`- LummaC2 Build:`, `- Configuration:`, v.v.) và chữ ký đặc trưng `(sig:UNIX.HEX)` trên dòng `Time:`. Banner build tham chiếu kênh `@lummanowork`; panel được bán theo mô hình MaaS thông qua `@lummamarketplace_bot`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `LummaC2`, `Lumma Stealer`
- Variants observed: **6**
- CyStack observations represented: **776,374**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền |
| Crypto wallet extensions (focus on MetaMask, Phantom, and similar) | Tiện ích mở rộng ví tiền điện tử (tập trung vào MetaMask, Phantom và các ví tương tự) |
| Steam, Telegram, Discord session tokens | Token phiên đăng nhập Steam, Telegram, Discord |
| 2FA seeds from Authy and similar desktop clients | Seed 2FA từ Authy và các ứng dụng desktop tương tự |
| Cryptocurrency seed phrases harvested from text files | Cụm từ khôi phục (seed phrase) tiền điện tử thu thập từ tệp văn bản |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the `(sig:UNIX.HEX)` parenthesised
signature on the `- Time:` line. Together with the
`- LummaC2 Build:` banner this is unambiguous Lumma. Several
derivative families (Remus, AL Stealer, BabaStealer,
ArtHouseCloud, CashFlow) share the dash-prefix shape but lack
the signature; they should be tracked separately.

### Tiếng Việt

Dấu hiệu có độ tin cậy cao: chữ ký trong ngoặc đơn `(sig:UNIX.HEX)` trên dòng `- Time:`. Kết hợp với banner `- LummaC2 Build:`, đây là dấu hiệu nhận diện Lumma rõ ràng, không gây nhầm lẫn. Một số họ mã độc phái sinh (Remus, AL Stealer, BabaStealer, ArtHouseCloud, CashFlow) có chung cấu trúc dữ liệu dạng gạch đầu dòng nhưng không có chữ ký này; cần theo dõi các họ này riêng biệt.

## Observed log variants

### `v_098b5cb9b92999ab2453a165215e61e1`

- Format ID: `cs-brad-logs-stealer`
- Observed filenames: `System.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **high**
- Historical records represented: **7,369**
- Representative sample: [open sample](samples/v_098b5cb9b92999ab2453a165215e61e1/sample.txt)
- Sample SHA-256: `f6ae0c9fd19239a2f3275a95e5769ea0c26079b999e4d9cd37d23e5be2f84ea4`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `- @BRADLOGS`, `- Date : Build:`, `BRADMAX`
- Field labels: -

### `v_41473f829c21e719f7d2c773a67ed897`

- Format ID: `cs-brad-logs-stealer`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **high**
- Historical records represented: **206**
- Representative sample: [open sample](samples/v_41473f829c21e719f7d2c773a67ed897/sample.txt)
- Sample SHA-256: `d01c724db8109b2834104f87e4b4cd1ed91ce1208ebefc7cd4b1519f9787005f`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `- @BRADLOGS`
- Field labels: -

### `v_7682ef5532c87a9cc6598dd189ef2ae5`

- Format ID: `lumma`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `legacy-lummac2-build`
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_7682ef5532c87a9cc6598dd189ef2ae5/sample.txt)
- Sample SHA-256: `e1ee50cd83e5e442a2a04894bed6f45d4cdd5a5d938c07c1b15cc1a164a96fc6`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `LummaC2, Build`
- Field labels: -

### `v_a9b26efd5e8a2cd1d6caa141ff2fb418`

- Format ID: `lumma`
- Observed filenames: `Information.txt`, `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `lumma-build-banner`
- Historical records represented: **30,637**
- Representative sample: [open sample](samples/v_a9b26efd5e8a2cd1d6caa141ff2fb418/sample.txt)
- Sample SHA-256: `38a2eaac0856758fb7c1c07750cd08f96c8dc746c93801a38a84b7185deefa76`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `LummaC2 Build:`
- Field labels: -

### `v_c533cdf8c3b19c2014faa1054388e8d3`

- Format ID: `lumma`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `bare-hwid-cpu-display`
- Historical records represented: **110**
- Representative sample: [open sample](samples/v_c533cdf8c3b19c2014faa1054388e8d3/sample.txt)
- Sample SHA-256: `818614ea003ee14409b1ee491b0ba452f8c36ae21da4983e41f3b6b223dced8b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `CPU Vendor`, `Display resolution`, `HWID`

### `v_db24fff43a757db95bdc275cd0470dea`

- Format ID: `lumma`
- Observed filenames: `Information.txt`, `System.txt`, `system_info.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `dash-hwid-cpu-ip-display`
- Historical records represented: **738,049**
- Representative sample: [open sample](samples/v_db24fff43a757db95bdc275cd0470dea/sample.txt)
- Sample SHA-256: `d34e235ef451070611fce20bf7cec44ef91798b69f201c5153a68fd7cd6e2ba3`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `CPU Vendor`, `Display resolution`, `HWID`, `IP Address`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [CSALStealer](../csal-stealer/)
- [CSBabaStealer](../cs-baba-stealer/)
- [CSArtHouseCloudStealer](../cs-art-house-cloud-stealer/)
- [CSCashFlowStealer](../cs-cash-flow-stealer/)

## Observed distribution channels

- <https://t.me/lummanowork>
- <https://t.me/lummamarketplace_bot>

## Sources

- <https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/>

Machine-readable record: [family.json](family.json)
