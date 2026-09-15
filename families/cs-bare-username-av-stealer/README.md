# CSBareUsernameAVStealer

## Overview / Tổng quan

### English

CSBareUsernameAVStealer is a CyStack-coined identifier for a
bare 3-line panel-summary `System.txt` observed inside `!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/System.txt` victim folders. The body has just
three flush-left lines: `IP: <ipv4 or N/A>`, `Username: <user>[<machine>]`, and `AntiVirus: <product list>`. No HWID,
no hostname header, no hardware inventory, no
harvested-credential count line, no geo block.

The `Username:` value carries the `<user>[<machine>]`
bracketed-machine-label shape: the leading token is the OS
user name, the bracketed token is the panel's collected
machine label (SMBIOS product name, build tag, or VM hostname
depending on what the panel captured). Public research
documents this exact bracketed shape for PXA Stealer captions,
but the canonical PXA caption fingerprint requires the `Data Information: CK:` count line which this body lacks. The
3-field shape could be a heavily-stripped PXA panel where
operator-side enrichment fully failed, or a separate panel
that adopted the PXA field set. Family stays CyStack-coined
pending a published confirmation; same conservative
attribution rationale as `CSGADSPanelStealer`.

### Tiếng Việt

CSBareUsernameAVStealer là định danh do CyStack đặt cho một bản tóm tắt bảng điều khiển (panel-summary) trơ trụi gồm 3 dòng, `System.txt`, được quan sát bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/System.txt`. Phần nội dung chỉ có ba dòng canh trái: `IP: <ipv4 or N/A>`, `Username: <user>[<machine>]`, và `AntiVirus: <product list>`. Không có HWID, không có dòng tiêu đề hostname, không có bản kê phần cứng, không có dòng đếm số lượng thông tin xác thực thu thập được, không có khối thông tin địa lý.

Giá trị `Username:` mang cấu trúc dữ liệu nhãn-máy-trong-ngoặc `<user>[<machine>]`: token đứng đầu là tên người dùng hệ điều hành, token trong ngoặc là nhãn máy do panel thu thập (tên sản phẩm SMBIOS, tag build, hoặc hostname máy ảo tùy theo những gì panel ghi nhận được). Các nghiên cứu công khai đã ghi nhận chính xác cấu trúc dữ liệu trong ngoặc này đối với chú thích của PXA Stealer, tuy nhiên dấu vết nhận diện chuẩn (fingerprint) của chú thích PXA đòi hỏi phải có dòng đếm số lượng `Data Information: CK:` mà nội dung này không có. Cấu trúc dữ liệu 3 trường có thể là một panel PXA đã bị tước bỏ gần như toàn bộ, nơi việc làm giàu dữ liệu (enrichment) phía đối tượng vận hành hoàn toàn thất bại, hoặc có thể là một panel riêng biệt đã áp dụng bộ trường dữ liệu của PXA. Họ mã độc này vẫn được xem là do CyStack đặt tên cho đến khi có xác nhận công bố; áp dụng cùng cơ sở lý luận quy kết thận trọng như đối với `CSGADSPanelStealer`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Bare IP/Username/AntiVirus panel summary`, `Stripped PXA-shape 3-field System.txt`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Public IPv4 (often `N/A` when geo-IP lookup fails) | Địa chỉ IPv4 công khai (thường là `N/A` khi tra cứu geo-IP thất bại) |
| OS user name + bracketed machine label (`Username: <user>[X1CARBON]`) | Tên người dùng hệ điều hành + nhãn máy trong ngoặc (`Username: <user>[X1CARBON]`) |
| Installed antivirus product list | Danh sách các sản phẩm antivirus đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `IP:` AND
`Username:` AND `AntiVirus:` (CamelCase `V`) keys PLUS
the `Username:` value matching the `<user>[<machine>]`
bracketed-machine-label shape PLUS absence of
`Data Information:` (rules out PXACaption) AND
`Browser Data:` (rules out CSGADSPanel) AND `Browers:`
(rules out CSBrowersStealer). During triage, the
bracketed machine label often carries the victim's
laptop model (e.g. `X1CARBON` for Lenovo ThinkPad X1
Carbon, `FLAREVM` for sandbox VMs) or build tag, which
is useful for victim-fingerprinting beyond the bare
username.

### Tiếng Việt

Dấu vết nhận diện đòi hỏi các khóa neo theo dòng `IP:` VÀ `Username:` VÀ `AntiVirus:` (CamelCase `V`) CỘNG với giá trị `Username:` khớp với cấu trúc dữ liệu nhãn-máy-trong-ngoặc `<user>[<machine>]` CỘNG với việc không có `Data Information:` (loại trừ PXACaption) VÀ `Browser Data:` (loại trừ CSGADSPanel) VÀ `Browers:` (loại trừ CSBrowersStealer). Trong quá trình phân loại, nhãn máy trong ngoặc thường mang theo model laptop của nạn nhân (ví dụ `X1CARBON` đối với Lenovo ThinkPad X1 Carbon, `FLAREVM` đối với các máy ảo sandbox) hoặc tag build, điều này hữu ích cho việc xác định dấu vết nạn nhân ngoài phạm vi tên người dùng trơ trụi.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)
- [CSBrowersStealer](../cs-browers-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
