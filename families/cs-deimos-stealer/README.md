# CSDeimosStealer

## Overview / Tổng quan

### English

CSDeimosStealer is a CyStack-coined identifier for the
self-named `Deimos Golang Stealer` `UserInformation.txt` log
observed inside `@ft7links`-distributed packs alongside the
CSEnchantCloudStealer and RedlineLikeStealer variants. The
`@ft7links` operator labels the archive `redline` but actually
mixes in multiple Lumma-shaped panels under one cover; this is
one of them. The `## Deimos Golang Stealer` banner is the
primary self-identification.

### Tiếng Việt

CSDeimosStealer là định danh do CyStack đặt cho nhật ký tự đặt tên `Deimos Golang Stealer` `UserInformation.txt` được quan sát bên trong các gói phân phối qua `@ft7links` cùng với các biến thể CSEnchantCloudStealer và RedlineLikeStealer. Đối tượng vận hành `@ft7links` gắn nhãn kho lưu trữ là `redline` nhưng thực tế trộn lẫn nhiều bảng điều khiển có cấu trúc giống Lumma dưới cùng một vỏ bọc; đây là một trong số đó. Dòng chữ `## Deimos Golang Stealer` là dấu hiệu tự nhận diện chính.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **medium**
- Canonical family: [lumma](../lumma/)
- Aliases: `Deimos Golang Stealer`, `Deimos`
- Variants observed: **1**
- CyStack observations represented: **1,058**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The `## Deimos Golang Stealer` literal banner together with
the `## Buy: https://t.me/<channel>` purchase line is the
cleanest fingerprint. The Go origin shows up in stable field
ordering across builds.

### Tiếng Việt

Dòng chữ `## Deimos Golang Stealer` cùng với dòng thông tin mua hàng `## Buy: https://t.me/<channel>` là dấu vết nhận diện rõ ràng nhất. Nguồn gốc Go thể hiện qua thứ tự trường dữ liệu ổn định giữa các bản build.

## Observed log variants

### `v_0db166abde7c3b7da1e04e5d3ff74795`

- Format ID: `cs-deimos-stealer`
- Observed filenames: `System.txt`
- Panel brand: `Deimos Golang Stealer`
- Distribution channel: `@ft7links`
- Attribution confidence: **medium**
- Historical records represented: **1,058**
- Representative sample: [open sample](samples/v_0db166abde7c3b7da1e04e5d3ff74795/sample.txt)
- Sample SHA-256: `a83fccfacb06f4fbe761e09d8b9ff8fc419a3f5e4ab52498f360f848ba9b9926`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `CPU Vendor`, `Display resolution`, `HWID`, `NetBIOS`


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
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
