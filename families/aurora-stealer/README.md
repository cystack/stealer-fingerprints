# Aurora Stealer

## Overview / Tổng quan

### English

Aurora Stealer is a Go-based Windows info-stealer operated as
Malware-as-a-Service by a Russian-speaking actor calling
themselves 'Cheshire' (forum handle `cheshire666` on WWH
Club). Public writeups document the family as active since at
least mid-2022. Aurora started as a multi-purpose botnet and
evolved to focus on credential and cryptocurrency theft.

The operator-side `UserInformation.txt` panel opens with two
self-declaration header lines pointing at the
`t.me/cheshire_aurora` channel and
`t.me/aurora_botnet_support` support handle, followed by four
`<================ SECTION ================>` section headers
(BUILD INFORMATION, GEO INFORMATION, USER INFORMATION, PC
INFORMATION) with tilde-equals padding around the label.
Fields include HWID, Log date, FileLocation, IP, Country,
Region, City, ScreenSize, and dash-prefixed hardware inventory
(- CPU / - RAM / - Display Devices).

The `FileLocation` value carries a WinRAR temp-extraction
path (`Rar$EX...`) with a U+3164 Hangul Filler disguise: the
observed sample pads `Script inside.txt` with many invisible
filler characters so the actual `.exe` extension gets pushed
off-screen in most file explorers. Victims see the file as
`Script inside.txt` and double-click it, executing the malware
directly from inside the RAR archive listing without
extracting first.

The C2 wire format is documented as JSON, GZIP-compressed, and
Base64-encoded. The observed plain-text panel render is the
operator-facing dashboard shape, not the wire format.
Multiple Telegram resellers repackage Aurora logs; the
observed sample ships through `@UP_DAISYCLOUD` with the Daisy
Cloud pipe-bordered banner and per-line watermark overlay.

### Tiếng Việt

Aurora Stealer là mã độc đánh cắp thông tin trên Windows viết bằng Go, được vận hành dưới dạng Malware-as-a-Service bởi một tác nhân nói tiếng Nga tự xưng là 'Cheshire' (biệt danh diễn đàn `cheshire666` trên WWH Club). Các bài phân tích công khai ghi nhận họ mã độc này hoạt động ít nhất từ giữa năm 2022. Aurora khởi đầu là một botnet đa mục đích và tiến hóa để tập trung vào đánh cắp thông tin xác thực và tiền mã hóa.

Bảng điều khiển `UserInformation.txt` phía đối tượng vận hành mở đầu bằng hai dòng tiêu đề tự khai báo trỏ đến kênh `t.me/cheshire_aurora` và biệt danh hỗ trợ `t.me/aurora_botnet_support`, tiếp theo là bốn tiêu đề phần `<================ SECTION ================>` (BUILD INFORMATION, GEO INFORMATION, USER INFORMATION, PC INFORMATION) với phần đệm dấu ngã-bằng bao quanh nhãn. Các trường bao gồm HWID, Log date, FileLocation, IP, Country, Region, City, ScreenSize, và kiểm kê phần cứng có dấu gạch đầu dòng (- CPU / - RAM / - Display Devices).

Giá trị `FileLocation` chứa đường dẫn giải nén tạm thời của WinRAR (`Rar$EX...`) với thủ thuật ngụy trang ký tự U+3164 Hangul Filler: mẫu quan sát được đệm `Script inside.txt` bằng rất nhiều ký tự đệm vô hình để phần mở rộng `.exe` thực sự bị đẩy ra ngoài màn hình hiển thị trong hầu hết các trình duyệt tệp. Nạn nhân thấy tệp là `Script inside.txt` và nhấp đúp vào nó, thực thi mã độc trực tiếp từ bên trong danh sách tệp nén RAR mà không cần giải nén trước.

Định dạng dữ liệu trên đường truyền C2 được ghi nhận là JSON, nén GZIP và mã hóa Base64. Bản kết xuất bảng điều khiển dạng văn bản thuần quan sát được là cấu trúc bảng điều khiển dành cho đối tượng vận hành, không phải định dạng dữ liệu trên đường truyền. Nhiều đối tượng bán lại trên Telegram đóng gói lại nhật ký Aurora; mẫu quan sát được phát tán qua `@UP_DAISYCLOUD` với biểu ngữ có viền dạng ống của Daisy Cloud và lớp phủ watermark theo từng dòng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Aurora`, `Aurora Botnet`, `Cheshire Aurora`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực, cookie, dữ liệu tự động điền được trình duyệt lưu |
| Cryptocurrency wallet extensions and desktop clients | Tiện ích mở rộng ví tiền mã hóa và ứng dụng ví trên máy tính |
| Steam session data | Dữ liệu phiên Steam |
| Telegram session data | Dữ liệu phiên Telegram |
| Screenshot capture | Chụp ảnh màn hình |
| Grabber for user-specified filename patterns | Mô-đun thu thập tệp theo mẫu tên tệp do người dùng chỉ định |
| System hardware and geolocation inventory | Kiểm kê phần cứng hệ thống và vị trí địa lý |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `cheshire_aurora` substring
(the operator channel handle self-declared in the
`CHANNEL:` header line) AND the `BUILD INFORMATION`
substring (the first section header). The two-anchor
combination cannot collide with unrelated documents
that mention Aurora by name because both anchors must
appear together. During triage, the `FileLocation:`
value often carries the U+3164 Hangul Filler disguise
trick; stripping the filler chars reveals the actual
`.exe` payload path. The `Log date:` format is
shared with Redline (`DD MMM YY HH:MM:SS`), reflecting
the same Russian-speaking developer ecosystem.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu chuỗi con `cheshire_aurora` (biệt danh kênh của đối tượng vận hành tự khai báo trong dòng tiêu đề `CHANNEL:`) VÀ chuỗi con `BUILD INFORMATION` (tiêu đề phần đầu tiên). Sự kết hợp hai mỏ neo này không thể trùng lặp với các tài liệu không liên quan có nhắc đến tên Aurora vì cả hai mỏ neo phải xuất hiện cùng nhau. Trong quá trình phân loại ban đầu, giá trị `FileLocation:` thường mang thủ thuật ngụy trang ký tự U+3164 Hangul Filler; loại bỏ các ký tự đệm sẽ lộ ra đường dẫn tải trọng `.exe` thực sự. Định dạng `Log date:` được chia sẻ với Redline (`DD MMM YY HH:MM:SS`), phản ánh cùng một hệ sinh thái nhà phát triển nói tiếng Nga.

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
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1036](https://attack.mitre.org/techniques/T1036/) | Masquerading | Ngụy trang |

## Related catalog profiles

- [Redline](../redline/)
- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)

## Observed distribution channels

- <https://t.me/cheshire_aurora>
- <https://t.me/aurora_botnet_support>
- <https://t.me/UP_DAISYCLOUD>

## Sources

- <https://blog.sekoia.io/aurora-a-rising-stealer-flying-under-the-radar/>
- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-aurora-stealer>
- <https://www.securityweek.com/multi-purpose-botnet-and-infostealer-aurora-rising-fame/>
- <https://thehackernews.com/2022/11/researchers-warn-of-cyber-criminals.html>
- <https://d01a.github.io/aurora-stealer-builder/>

Machine-readable record: [family.json](family.json)
