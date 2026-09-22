# CryptBot

## Overview / Tổng quan

### English

CryptBot is a Delphi-built info-stealer first publicly
documented in December 2019. The family is best known for its
`_Information.txt` victim summary plus sibling files
`_AllPasswords_list.txt`, `_AllCookies_list.txt`,
`_AllForms_list.txt`, `_AllWallets_list.txt`, and
`Screen.png`, all written into a per-victim folder under
`%TEMP%`. Multiple builder versions have been observed (v2.0,
v3.0, v3.1 per public analyses); the field set in the summary
file is stable across versions, with the v3.x line moving the
qualifier on `UserName` and `Data` fields from parentheses to
a brackets variant in some rebrand samples.

CryptBot distribution leans on SEO-poisoned cracked-software
landing pages and bundled freeware installers. The malware
writes the victim summary to disk, packs it with the harvested
credential / cookie / wallet files into a ZIP, and POSTs the
archive to a hard-coded C2 gate.

### Tiếng Việt

CryptBot là mã độc đánh cắp thông tin viết bằng Delphi, được ghi nhận công khai lần đầu vào tháng 12 năm 2019. Họ mã độc này được biết đến nhiều nhất với bản tóm tắt nạn nhân `_Information.txt` cùng các tệp liên quan `_AllPasswords_list.txt`, `_AllCookies_list.txt`, `_AllForms_list.txt`, `_AllWallets_list.txt`, và `Screen.png`, tất cả được ghi vào một thư mục theo từng nạn nhân dưới `%TEMP%`. Nhiều phiên bản trình dựng đã được ghi nhận (v2.0, v3.0, v3.1 theo các phân tích công khai); tập hợp trường trong tệp tóm tắt ổn định qua các phiên bản, với dòng v3.x chuyển bộ định danh trên các trường `UserName` và `Data` từ dấu ngoặc đơn sang biến thể dấu ngoặc vuông trong một số mẫu đổi thương hiệu.

Việc phát tán CryptBot dựa vào các trang đích phần mềm crack bị đầu độc SEO và các trình cài đặt phần mềm miễn phí đi kèm. Mã độc ghi bản tóm tắt nạn nhân ra đĩa, đóng gói nó cùng các tệp thông tin xác thực / cookie / ví đã thu thập được vào một tệp ZIP, rồi POST tệp nén đó đến một điểm tiếp nhận C2 được ghi cố định.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `CryptBot Stealer`, `Crypt Bot`
- Variants observed: **3**
- CyStack observations represented: **6**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chromium and Gecko) | Thông tin xác thực được trình duyệt lưu (Chromium và Gecko) |
| Browser cookies and autofill data | Cookie và dữ liệu tự động điền của trình duyệt |
| Cryptocurrency wallet files and browser extensions | Tệp ví tiền mã hóa và tiện ích mở rộng trình duyệt |
| Saved form data | Dữ liệu biểu mẫu đã lưu |
| System hardware and locale inventory | Kiểm kê phần cứng hệ thống và ngôn ngữ/vùng |
| Screenshot of the desktop | Ảnh chụp màn hình desktop |

## Detection notes / Ghi chú nhận diện

### English

The `_Information.txt` filename is the strongest folder-level signal: paired with the `_AllPasswords_list.txt` /
`_AllCookies_list.txt` / `_AllForms_list.txt` sibling
set, no other family in this catalog uses this exact
naming. Content-level fingerprint anchors on the
bracket-suffixed `UserName [ComputerName]:` and
`Data [Time]:` keys plus `Keyboard Languages:`; the
no-space `UserName` spelling distinguishes CryptBot from
Vidar / StealC / Mars (which use `User Name:`).

### Tiếng Việt

Tên tệp `_Information.txt` là tín hiệu cấp thư mục mạnh nhất: kết hợp với bộ tệp liên quan `_AllPasswords_list.txt` / `_AllCookies_list.txt` / `_AllForms_list.txt`, không có họ mã độc nào khác trong danh mục này sử dụng đúng cách đặt tên này. Dấu hiệu nhận diện ở cấp nội dung dựa trên các khóa `UserName [ComputerName]:` và `Data [Time]:` có hậu tố ngoặc vuông cùng `Keyboard Languages:`; cách viết `UserName` không có khoảng trắng phân biệt CryptBot với Vidar / StealC / Mars (vốn dùng `User Name:`).

## Observed log variants

### `v_3961dc745f17881dc5dfeed1f376164f`

- Format ID: `cryptbot`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `paren-user-host`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_3961dc745f17881dc5dfeed1f376164f/_Information.txt)
- Sample SHA-256: `f695a400b4d760edf53fa303aa71df031829d1dfe4d00760a28deb241476cc22`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `1) BlueStacks X (Version`, `100) Configurador FNMT (Version`, `101) Google Chrome (Version`, `102) Hotspot Shield 12.9.0 (Version`, `103) Microsoft Edge (Version`, `104) Microsoft Edge Update (Version`, `105) WebView2 Runtime de Microsoft Edge (Version`, `106) GameLoop (Version`, `107) Adobe Photoshop 2023 (Version`, `108) Razer Synapse (Version`, `109) RivaTuner Statistics Server 7.2.3 (Version`, `110) Steam (Version`, `111) Ubisoft Connect (Version`, `112) UXP WebView Support (Version`, `113) Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40664 (Version`, `115) Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501 (Version`, `116) Microsoft Visual C++ 2022 X86 Minimum Runtime - 14.40.33810 (Version`, `117) Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030 (Version`, `118) Launcher Prerequisites (x64) (Version`, `119) Microsoft Visual C++ 2015-2022 Redistributable (x86) - 14.40.33810 (Version`, `120) Java Auto Updater (Version`, `121) UE4 Prerequisites (x64) (Version`, `122) Microsoft Visual C++ 2015-2022 Redistributable (x64) - 14.40.33810 (Version`, `123) Microsoft Visual C++ 2022 X86 Additional Runtime - 14.40.33810 (Version`, `124) Teams Machine-Wide Installer (Version`, `125) Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40664 (Version`, `126) Microsoft Visual C++ 2005 Redistributable (Version`, `127) Epic Games Launcher (Version`, `128) Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161 (Version`, `129) Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40664 (Version`, `130) Microsoft Visual C++ 2005 Redistributable (Version`, `131) G-Menu (Version`, `132) Adobe Refresh Manager (Version`, `133) Hotspot Shield 12.9.0 (Version`, `134) Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030 (Version`, `136) Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61030 (Version`, `137) Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030 (Version`, `138) Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40664 (Version`, `139) Hotspot Shield 12.9.0 (Version`, `140) Epic Online Services (Version`, `141) Microsoft Visual C++ 2010 x86 Redistributable - 10.0.40219 (Version`, `142) Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501 (Version`, `143) Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022 (Version`, `2) BlueStacks Services (Version`, `24) BlueStacks App Player (Version`, `28) CPUID CPU-Z MSI 1.92 (Version`, `29) Hotspot Shield 9.5.9 Pre-Active (Version`, `3) Discord (Version`, `30) HotspotShield TAP-Windows 9.24.4 (Version`, `31) Microsoft OneDrive (Version`, `32) Microsoft Office Profesional Plus 2021 - es-es (Version`, `39) TAP-Windows 9.21.2 (Version`, `40) WinRAR 5.91 (64-bit) (Version`, `41) Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 (Version`, `42) Microsoft Visual C++ 2010 x64 Redistributable - 10.0.40219 (Version`, `43) Microsoft Update Health Tools (Version`, `44) Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 (Version`, `45) Logitech G HUB (Version`, `46) Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 (Version`, `47) Microsoft Visual C++ 2022 X64 Additional Runtime - 14.40.33810 (Version`, `48) Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161 (Version`, `49) Revo Uninstaller Pro 5.3.0 (Version`, `5) Microsoft Teams classic (Version`, `50) Java 8 Update 411 (64-bit) (Version`, `51) Update for Windows 10 for x64-based Systems (KB5001716) (Version`, `52) Comprobación de estado de PC Windows (Version`, `53) Office 16 Click-to-Run Licensing Component (Version`, `54) Office 16 Click-to-Run Extensibility Component (Version`, `55) Office 16 Click-to-Run Localization Component (Version`, `56) Corsair iCUE5 Software (Version`, `57) Adobe Acrobat (64-bit) (Version`, `58) Hotspot Shield 9.5.9 Pre-Active (Version`, `59) NVIDIA Controlador de gráficos 560.81 (Version`, `6) Zoom (Version`, `60) NVIDIA GeForce Experience 3.28.0.417 (Version`, `62) NVIDIA Software del sistema PhysX 9.23.1019 (Version`, `64) NVIDIA FrameView SDK 1.3.8513.32290073 (Version`, `65) NVIDIA SHIELD Streaming (Version`, `66) NVIDIA GPX Common OSS binaries (POCO, OpenSSL, libprotobuf) (Version`, `68) NVIDIA Install Application (Version`, `69) NVIDIA Backend (Version`, `70) NVIDIA Container (Version`, `71) NVIDIA TelemetryApi helper for NvContainer (Version`, `72) NVIDIA LocalSystem Container (Version`, `73) NVIDIA Message Bus for NvContainer (Version`, `74) NVIDIA NVAPI Monitor plugin for NvContainer (Version`, `75) NVIDIA NetworkService Container (Version`, `76) NVIDIA Session Container (Version`, `77) NVIDIA User Container (Version`, `78) NVIDIA NvModuleTracker (Version`, `79) NVIDIA NodeJS (Version`, `80) NVIDIA Watchdog Plugin for NvContainer (Version`, `81) NVIDIA Telemetry Client (Version`, `82) NVIDIA Virtual Host Controller (Version`, `83) Nvidia Share (Version`, `84) NVIDIA ShadowPlay 3.28.0.417 (Version`, `85) NVIDIA SHIELD Wireless Controller Driver (Version`, `86) NVIDIA Update Core (Version`, `87) NVIDIA USBC Driver 1.52.831.832 (Version`, `89) Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.40.33810 (Version`, `90) Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030 (Version`, `91) Node.js (Version`, `92) Comprobación de estado de PC Windows (Version`, `93) UE4 Prerequisites (x64) (Version`, `94) MSI Afterburner 4.6.2 (Version`, `95) AutoFirma (Version`, `96) AutoFirmaJA (Version`, `98) Brave (Version`, `CPU`, `Data (Time`, `Display Resolution`, `GPU`, `Installed Apps`, `Keyboard Languages`, `OS`, `RAM`, `UserName (ComputerName`

### `v_ab2260210a1222f2c7c15c25c8251227`

- Format ID: `cryptbot`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `bracket-user-host`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ab2260210a1222f2c7c15c25c8251227/sample.txt)
- Sample SHA-256: `090c3bba8e01bf881bd061fb18d3c0a591a57433376c133a38838a3bb6eec86d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data [Time]:`, `UserName [`
- Field labels: `Installed software`, `Keyboard Languages`

### `v_cbcdfdbccf53d49530cd7b152470af8a`

- Format ID: `cryptbot`
- Observed filenames: `_Information.txt`
- Panel brand: `Ottoman`
- Distribution channel: `@OttoSup`
- Attribution confidence: **high**
- Layout: `bracket-user-host`
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_cbcdfdbccf53d49530cd7b152470af8a/sample.txt)
- Sample SHA-256: `967be06238c92a4ffb1e3b21a0ce1d53ba66ecb9ccf7dc9f921eab0e605576e8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data [Time]:`, `Installed software:`, `UserName [`
- Field labels: `Keyboard Languages`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |

## Related catalog profiles

- None recorded.

## Sources

- <https://research.openanalysis.net/cryptbot/botnet/yara/config/2024/12/06/cryptbot2.html>
- <https://fr3d.hk/blog/cryptbot-too-good-to-be-true>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.cryptbot>
- <https://any.run/malware-trends/cryptbot/>
- <https://www.deepinstinct.com/blog/cryptbot-how-free-becomes-a-high-price-to-pay>

Machine-readable record: [family.json](family.json)
