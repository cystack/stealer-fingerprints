# AMOS Stealer

## Overview / Tổng quan

### English

Atomic macOS Stealer (AMOS) is a Go and C++ macOS info-stealer
sold as malware-as-a-service through private Telegram channels
since April 2023. The operator panel charges around $1000 per
month and ships a builder, a victim web panel, a MetaMask
brute-forcer, and Telegram log delivery. Multiple public
malware writeups profile the family. AMOS spawned the Banshee,
Cthulhu, Poseidon, and Odyssey forks tracked separately in
this catalog.

The artifact documented here is the operator-facing summary
written as `UserInformation.txt` inside per-victim folders of
AMOS log aggregator packs. The file opens with four flush-left
panel section headers in a fixed order (`MetaMask Info:`,
`Debanks:`, `Userinfo:`, then `Software:` / `Hardware:` /
`Graphics/Displays:` introducing the verbatim
`system_profiler` output for the SPSoftwareDataType,
SPHardwareDataType, and SPDisplaysDataType data types).
`MetaMask Info` and `Debanks` sit empty in most samples
because the panel surfaces wallet artifacts in sibling folders
(`Wallets/`, `Keychain/`) rather than inlined into this
summary.

### Tiếng Việt

Atomic macOS Stealer (AMOS) là mã độc đánh cắp thông tin trên macOS viết bằng Go và C++, được bán dưới dạng malware-as-a-service qua các kênh Telegram riêng tư từ tháng 4 năm 2023. Bảng điều khiển đối tượng vận hành tính phí khoảng 1000 đô la mỗi tháng và đi kèm một trình dựng (builder), một bảng điều khiển web để quản lý nạn nhân, một công cụ dò mật khẩu (brute-forcer) cho MetaMask, và tính năng gửi nhật ký qua Telegram. Nhiều bài phân tích mã độc công khai đã mô tả chi tiết họ mã độc này. AMOS đã sinh ra các nhánh Banshee, Cthulhu, Poseidon và Odyssey được theo dõi riêng trong danh mục này.

Dấu vết được ghi lại ở đây là bản tóm tắt dành cho đối tượng vận hành được ghi dưới dạng `UserInformation.txt` bên trong các thư mục theo từng nạn nhân của các gói tổng hợp nhật ký AMOS. Tệp bắt đầu với bốn tiêu đề phần của bảng điều khiển canh lề trái theo thứ tự cố định (`MetaMask Info:`, `Debanks:`, `Userinfo:`, sau đó `Software:` / `Hardware:` / `Graphics/Displays:` giới thiệu dữ liệu đầu ra nguyên văn `system_profiler` cho các kiểu dữ liệu SPSoftwareDataType, SPHardwareDataType và SPDisplaysDataType). `MetaMask Info` và `Debanks` trống trong hầu hết các mẫu vì bảng điều khiển đưa các dấu vết liên quan đến ví vào các thư mục liên quan (`Wallets/`, `Keychain/`) thay vì chèn trực tiếp vào bản tóm tắt này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Atomic Stealer`, `Atomic macOS Stealer`, `AMOS`, `Atomic Mac`
- Variants observed: **2**
- CyStack observations represented: **19,150**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, history | Thông tin xác thực, cookie, dữ liệu tự động điền, lịch sử duyệt web được trình duyệt lưu |
| Crypto wallet extensions (MetaMask, Phantom, Coin98, Trust Wallet, 50+ targeted) | Tiện ích mở rộng ví tiền mã hóa (MetaMask, Phantom, Coin98, Trust Wallet, hơn 50 mục tiêu) |
| Desktop crypto wallets (Electrum, Exodus, Atomic, Wasabi, Ledger Live, Trezor Suite) | Ví tiền mã hóa trên máy tính (Electrum, Exodus, Atomic, Wasabi, Ledger Live, Trezor Suite) |
| macOS Keychain database and login password (AppleScript prompt) | Cơ sở dữ liệu Keychain của macOS và mật khẩu đăng nhập (thông qua hộp thoại AppleScript) |
| Apple Notes content and Telegram session files | Nội dung Apple Notes và tệp phiên Telegram |
| Documents and Desktop file grabber (.txt, .pdf, .docx, .wallet, .key) | Mô-đun thu thập tệp trong thư mục Documents và Desktop (.txt, .pdf, .docx, .wallet, .key) |

## Detection notes / Ghi chú nhận diện

### English

The line-anchored `MetaMask Info:` + `Debanks:` + `Userinfo:`
triple is unique to this AMOS panel render and does not
collide with the Cthulhu (`BuildID:` + `Hardware Overview:`)
or MacSync (`MacSync Stealer` banner) macOS forks the catalog
tracks. Family attribution rests on a community stealer-format
catalog mapping this exact `UserInformation.txt` shape to
Atomic Mac; the underlying AMOS family is publicly confirmed
elsewhere but no public writeup shows a sample showing this
specific section-header layout, so the profile carries
medium attribution confidence. During incident response, check for sibling `FileGrabber/`,
`BrowserVersion.txt`, `keychain.txt`, and `Passwords.txt`
artifacts in the same victim directory; those sibling
filenames corroborate AMOS attribution.

### Tiếng Việt

Bộ ba `MetaMask Info:` + `Debanks:` + `Userinfo:` neo theo dòng là đặc điểm riêng của cách hiển thị bảng điều khiển AMOS này và không trùng lặp với các nhánh macOS Cthulhu (`BuildID:` + `Hardware Overview:`) hoặc MacSync (biểu ngữ `MacSync Stealer`) mà danh mục này theo dõi. Việc quy kết họ mã độc dựa trên một danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn, ánh xạ đúng cấu trúc dữ liệu `UserInformation.txt` này với Atomic Mac; bản thân họ mã độc AMOS đã được xác nhận công khai ở nơi khác nhưng không có bài phân tích công khai nào cho thấy một mẫu có bố cục tiêu đề phần cụ thể này, do đó hồ sơ này mang mức độ tin cậy quy kết trung bình. Trong quá trình ứng phó sự cố, hãy kiểm tra các dấu vết liên quan `FileGrabber/`, `BrowserVersion.txt`, `keychain.txt` và `Passwords.txt` trong cùng thư mục nạn nhân; các tên tệp liên quan này củng cố việc quy kết cho AMOS.

## Observed log variants

### `v_93dd7400af7f5eefc3087e22c6b99a1c`

- Format ID: `amos`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **medium**
- Historical records represented: **19,149**
- Representative sample: [open sample](samples/v_93dd7400af7f5eefc3087e22c6b99a1c/sample.txt)
- Sample SHA-256: `2356e0c8ea7177f7e7d33714b3b37bf74a3bbab1633e9f21b73d1d5fe30c7437`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Debanks:`, `MetaMask Info:`, `Userinfo:`
- Field labels: -

### `v_c2253c1c58f2ed299a4434b11398cd45`

- Format ID: `cs-daisy-up-cloud-amos-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `Daisy Private Cloud`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_c2253c1c58f2ed299a4434b11398cd45/UserInformation.txt)
- Sample SHA-256: `23f21c4574b384e96cb64dd2fd0759c6daef51888e8d4b73dc9c35aada821de4`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Daisy Private Cloud`
- Field labels: `1 Week`, `2 Week`, `A 3 Month`, `A _______ Join`, `D 1 Month`, `D Join`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 bfvys Hardware UUID`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 ctkul Online`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 dahw Country`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 dvwbt Resolution`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 kugnbtqd Model Name`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 mqeyop Computer Name`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 nkkvaizrl Installed Applications`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 pqbbib Apple M4 Pro`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 puhklxo Graphics/Displays`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 tbwtt Display Type`, `D0a1i0s9y2 P9r4i2v5a4t2e c3l9o3u7d6 vdgo Chip`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 beggqu System Firmware Version`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 bkikjhls Model Identifier`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 dcbqvo Hardware Overview`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 gxpsvlldw Mirror`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 gylyyyny Time since boot`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 iggetun IP`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 kchrvui Hardware`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 tgwxccq Displays`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 wakrhc User Name`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 wlnshysuo Connection Type`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 xiwzq System Software Overview`, `D4a6i9s5y7 P3r2i6v3a6t0e c0l5o6u8d9 zvxzod Color LCD`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 ajznc Main Display`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 dvixz Bus`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 evwbssfo Vendor`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 ezdul Model Number`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 nwkrk Type`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 otnbo Boot Volume`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 qrvelg Automatically Adjust Brightness`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 rpvx Boot Mode`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 txothjzzm Software`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 vauu Activation Lock Status`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 wqqejga Metal Support`, `D4a7i6s5y5 P7r1i4v9a6t2e c7l8o8u9d0 zbho Serial Number (system`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 bgelc BuildID`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 broindc Total Number of Cores`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 etsolk Userinfo`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 gjije Provisioning UDID`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 jrml City`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 kpoyrpj Kernel Version`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 pbclye System Integrity Protection`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 plmxb Chipset Model`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 rwav Memory`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 tvsgr Total Number of Cores`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 ubitwmz System Version`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 wwqn OS Loader Version`, `D8a9i8s6y8 P3r7i0v2a4t7e c7l4o1u5d6 ykianntld Secure Virtual Memory`, `I LifeTime`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain | Keychain |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [Odyssey Stealer](../odyssey-stealer/)
- [MacSync](../mac-sync/)

## Related external families

- `banshee-stealer`
- `poseidon-stealer`

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://www.sentinelone.com/blog/atomic-stealer-threat-actor-spawns-second-variant-of-macos-malware-sold-on-telegram/>
- <https://www.esentire.com/blog/fake-deepseek-site-infects-mac-users-with-atomic-stealer>
- <https://www.picussecurity.com/resource/blog/atomic-stealer-amos-macos-threat-analysis>
- <https://moonlock.com/atomic-macos-stealer>
- <https://www.bleepingcomputer.com/news/security/new-atomic-macos-info-stealing-malware-targets-50-crypto-wallets/>
- <https://cyble.com/blog/threat-actor-selling-new-atomic-macos-amos-stealer-on-telegram/>

Machine-readable record: [family.json](family.json)
