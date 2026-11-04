#import "report-theme.typ": report-theme

#let ink = rgb("#101820")
#let cyan = rgb("#19D3E6")
#let blue = rgb("#247BFF")
#let ice = rgb("#F5F8FA")
#let slate = rgb("#52616B")
#let border = rgb("#DCE5EA")
#let soft-cyan = rgb("#E8FBFD")
#let soft-blue = rgb("#EAF1FF")
#let logo = image("logo.png")

#show: report-theme.with(
  title: "Brand Guidelines",
  author: "Brand Identity System",
  rhythm: "report",
  body-size: 10.5pt,
  running-header: true,
)

#set text(font: ("Noto Sans", "Noto Sans CJK SC"), lang: "vi", region: "vn")

#let pill(label, fill: cyan, fg: ink) = box(fill: fill, radius: 3pt, inset: (x: 7pt, y: 3pt))[#text(size: 8pt, weight: "bold", fill: fg)[#label]]
#let callout(title, body, fill: soft-cyan) = block(fill: fill, radius: 6pt, inset: 12pt, width: 100%)[
  #text(weight: "bold", fill: ink)[#title]\\
  #text(size: 9.5pt, fill: slate)[#body]
]
#let swatch(name, hex, color, text-color: white) = {
  box(width: 100%, radius: 5pt, fill: color, inset: 10pt)[
    #text(fill: text-color, weight: "bold")[#name]\\
    #text(size: 8.5pt, fill: text-color)[#hex]
  ]
}
#let small-label(t) = text(size: 8pt, weight: "bold", fill: slate, tracking: 0.5pt)[#upper(t)]

// Cover
#page(margin: (top: 1.4cm, bottom: 1.4cm, x: 2.0cm), numbering: none, header: none, footer: none)[
  #rect(fill: ink, width: 100%, height: 100%, radius: 0pt)[
    #pad(left: 1.2cm, right: 1.2cm, top: 1.4cm, bottom: 1.2cm)[
      #grid(columns: (1fr, auto), align: horizon)[
        [#text(size: 10pt, weight: "bold", fill: cyan, tracking: 1pt)[BRAND IDENTITY SYSTEM]],
        [#text(size: 9pt, fill: rgb("#B9C7CE"))[VERSION 1.0 / 2026]],
      ]
      #v(4.2cm)
      #align(center)[
        #box(width: 6.0cm, height: 6.0cm, fill: white, radius: 22pt, inset: 0pt)[
          #align(center + horizon)[#image("logo.png", width: 4.2cm)]
        ]
        #v(1.5cm)
        #text(size: 34pt, weight: "bold", fill: white)[Brand Guidelines]
        #v(0.35cm)
        #text(size: 15pt, fill: rgb("#B9C7CE"))[Quy chuẩn nhận diện thương hiệu]
        #v(1.0cm)
        #line(length: 25%, stroke: 1.5pt + cyan)
      ]
      #v(4.5cm)
      #grid(columns: (1fr, 1fr),
        [#text(size: 9pt, fill: rgb("#B9C7CE"))[Logo · Color · Typography · Applications]],
        align(right)[#text(size: 9pt, fill: rgb("#B9C7CE"))[Confidential brand reference]]
      )
    ]
  ]
]

// Contents
#page(numbering: none, header: none)[
  #v(1cm)
  #small-label("Contents")
  #v(0.35cm)
  #text(size: 26pt, weight: "bold", fill: ink)[Nội dung]
  #v(0.6cm)
  #line(length: 100%, stroke: 1pt + border)
  #v(0.7cm)
  #outline(title: none, indent: 1.2em)
  #v(1.2cm)
  #callout("Cách sử dụng tài liệu", [Đây là nguồn tham chiếu cho mọi điểm chạm của thương hiệu: sản phẩm số, website, truyền thông, tài liệu bán hàng và các tài sản in ấn. Khi có xung đột, ưu tiên tính nhất quán, khả năng đọc và sự rõ ràng của biểu tượng.], fill: soft-blue)
]

#counter(page).update(1)

= Nền tảng thương hiệu

#small-label("01 / Brand foundation")

== Tinh thần cốt lõi

Thương hiệu được xây dựng trên hình ảnh một sản phẩm công nghệ *nhanh, thông minh và đáng tin cậy*. Biểu tượng chữ G kết hợp mũi tên tạo ra một chuyển động hướng về phía trước — đại diện cho tiến bộ, tăng trưởng và khả năng biến ý tưởng thành kết quả.

#grid(columns: (1fr, 1fr, 1fr), gutter: 10pt,
  [#pill("CLEAN", fill: soft-cyan) #v(0.25cm)\ Hình thức tối giản, có khoảng thở và không phụ thuộc vào chi tiết trang trí.],
  [#pill("FAST", fill: soft-blue) #v(0.25cm)\ Nhịp điệu thị giác dứt khoát, đường cắt hướng tiến và tương tác rõ ràng.],
  [#pill("SMART", fill: rgb("#EEF1F3")) #v(0.25cm)\ Công nghệ gần gũi, có hệ thống và luôn ưu tiên trải nghiệm người dùng.]
)

== Tính cách thương hiệu

#table(columns: (1.2fr, 2fr, 1.8fr), inset: 8pt, stroke: (x: none, y: 0.5pt + border),
  table.header([*Thuộc tính*], [*Nên thể hiện*], [*Không nên thể hiện*]),
  [Tự tin], [Rõ ràng, chủ động, có lập luận], [Khoe khoang, phô trương],
  [Hiện đại], [Tinh gọn, digital-first, có nhịp điệu], [Chạy theo trào lưu],
  [Dễ tiếp cận], [Ngôn ngữ đơn giản, hướng dẫn cụ thể], [Quá kỹ thuật, lạnh lùng],
  [Hiệu quả], [Tập trung vào hành động và kết quả], [Nhiều hiệu ứng nhưng ít thông tin]
)

== Nguyên tắc giọng điệu

#callout("Nói rõ. Nói ngắn. Nói có ích.", [Sử dụng câu chủ động, động từ mạnh và tiêu đề có thể hiểu ngay. Tránh thuật ngữ nội bộ nếu không cần thiết. Trong giao tiếp tiếng Việt, ưu tiên cách viết tự nhiên, thân thiện nhưng không suồng sã.], fill: soft-cyan)

#v(0.4cm)
#grid(columns: (1fr, 1fr), gutter: 12pt,
  [*Nên viết*\\ “Bắt đầu nhanh hơn với quy trình rõ ràng.”\\ “Xem kết quả ngay.”],
  [*Tránh viết*\\ “Một giải pháp đột phá mang tính cách mạng.”\\ “Tối ưu hóa hiệu suất vận hành toàn diện.”]
)

= Hệ thống logo

#small-label("02 / Logo system")

== Logo chính

Logo chính là biểu tượng độc lập, không kèm wordmark. Cấu trúc gồm một vòng chữ G hình học và mũi tên hướng tiến. Mũi tên là chi tiết nhận diện quan trọng, vì vậy cần giữ được độ sắc nét và khoảng âm xung quanh.

#align(center)[
  #box(fill: ice, radius: 12pt, inset: 1.0cm, width: 8.5cm)[#align(center)[#image("logo.png", width: 4.2cm)]]
]

#v(0.5cm)
#grid(columns: (1fr, 1fr), gutter: 12pt,
  [*Phiên bản ưu tiên*\\ Logo màu trên nền trắng hoặc Ice White. Dùng cho website, app icon, tài liệu và điểm chạm chính.],
  [*Phiên bản thay thế*\\ Logo trắng trên Charcoal Black hoặc logo đơn sắc khi điều kiện in ấn/hiển thị bị giới hạn.]
)

== Vùng an toàn

Vùng an toàn giúp logo không bị cạnh tranh bởi chữ, hình ảnh hoặc mép khung. Quy ước: lấy *chiều cao phần thân chữ G* làm đơn vị `X`; giữ khoảng trống tối thiểu `1X` ở cả bốn phía.

#align(center)[
  #box(fill: rgb("#F0F4F6"), stroke: 1pt + cyan, inset: 1.0cm, width: 8.5cm)[
    #align(center)[#image("logo.png", width: 3.5cm)]
  ]
]
#align(center)[#text(size: 8.5pt, fill: slate)[Minh họa vùng an toàn 1X — không đặt yếu tố khác vào vùng này.]]

== Kích thước tối thiểu

#table(columns: (1.3fr, 1fr, 2.2fr), inset: 8pt, stroke: (x: none, y: 0.5pt + border),
  table.header([*Bối cảnh*], [*Tối thiểu*], [*Khuyến nghị*]),
  [Digital / app], [24 px], [32 px trở lên để mũi tên vẫn rõ],
  [Favicon], [16 px], [Dùng phiên bản đơn sắc nếu cần],
  [In ấn], [12 mm], [18 mm trở lên cho độ sắc nét tốt]
)

= Màu sắc thương hiệu

#small-label("03 / Color system")

== Bảng màu cốt lõi

#grid(columns: (1fr, 1fr), gutter: 10pt,
  swatch("Charcoal Black", "#101820", ink),
  swatch("Electric Cyan", "#19D3E6", cyan, text-color: ink),
  swatch("Digital Blue", "#247BFF", blue),
  swatch("Ice White", "#F5F8FA", ice, text-color: ink),
  swatch("Pure White", "#FFFFFF", white, text-color: ink),
  swatch("Slate Gray", "#52616B", slate),
  swatch("Mist Gray", "#DCE5EA", border, text-color: ink),
  swatch("Soft Cyan", "#E8FBFD", soft-cyan, text-color: ink),
)

== Tỷ lệ và phối màu

#grid(columns: (3fr, 2fr, 1fr, 1fr), gutter: 4pt,
  [#block(fill: ice, height: 0.65cm)[] #text(size: 8pt)[60% / Ice White]],
  [#block(fill: ink, height: 0.65cm)[] #text(size: 8pt)[25% / Charcoal]],
  [#block(fill: cyan, height: 0.65cm)[] #text(size: 8pt)[10% / Cyan]],
  [#block(fill: blue, height: 0.65cm)[] #text(size: 8pt)[5% / Blue]],
)

#v(0.4cm)
#callout("Quy tắc tương phản", [Charcoal Black là màu chữ và nền tối chủ đạo. Electric Cyan chỉ dùng để nhấn, không dùng cho đoạn văn dài. Trên nền cyan, dùng chữ Charcoal Black; trên nền Charcoal Black, dùng chữ trắng hoặc Ice White.], fill: soft-blue)

== Màu trạng thái giao diện

#table(columns: (1.2fr, 1fr, 2fr), inset: 8pt, stroke: (x: none, y: 0.5pt + border),
  table.header([*Trạng thái*], [*Màu*], [*Cách dùng*]),
  [Success], [`#147D64`], [Thông báo hoàn tất, xác nhận tích cực],
  [Warning], [`#B26A00`], [Cảnh báo cần chú ý nhưng chưa chặn hành động],
  [Error], [`#C23B4A`], [Lỗi, hành động thất bại, nội dung cần sửa],
  [Info], [`#247BFF`], [Hướng dẫn, thông tin bổ sung]
)

= Typography

#small-label("04 / Typography")

== Bộ font khuyến nghị

Vì bộ nhận diện cần hỗ trợ tiếng Việt tốt trên nhiều nền tảng, hệ thống sử dụng *Noto Sans* làm font triển khai chuẩn. Khi môi trường cho phép cài font thương hiệu, có thể dùng *Sora* cho tiêu đề và *Be Vietnam Pro* cho nội dung; hai font này là lựa chọn mở rộng, không bắt buộc.

#grid(columns: (1fr, 1fr), gutter: 12pt,
  [#text(size: 24pt, weight: "bold", fill: ink)[Noto Sans] #v(0.2cm) #text(size: 9pt, fill: slate)[Primary system font · hỗ trợ tiếng Việt · UI và nội dung]],
  [#text(size: 24pt, weight: "bold", fill: cyan)[Sora] #v(0.2cm) #text(size: 9pt, fill: slate)[Optional display font · tiêu đề lớn · chiến dịch]]
)

== Thang chữ

#table(columns: (1.2fr, 1fr, 1.2fr, 2fr), inset: 8pt, stroke: (x: none, y: 0.5pt + border),
  table.header([*Cấp*], [*Size*], [*Weight*], [*Ứng dụng*]),
  [Display], [48–64 px], [Bold], [Hero, landing page, campaign],
  [H1], [36–48 px], [Bold], [Tiêu đề trang],
  [H2], [28–36 px], [SemiBold], [Tiêu đề nhóm],
  [H3], [20–24 px], [SemiBold], [Tên card, module, section],
  [Body], [16 px], [Regular], [Nội dung chính],
  [Caption], [13–14 px], [Medium], [Chú thích, metadata]
)

== Quy tắc trình bày

- Tiêu đề dùng câu ngắn, ưu tiên một ý chính mỗi dòng.
- Chữ body giữ line-height khoảng `1.5–1.7`; tiêu đề khoảng `1.15–1.25`.
- Không dùng quá ba cấp độ chữ trong một màn hình nhỏ.
- Không kéo giãn, nghiêng giả hoặc thêm outline cho logo và chữ.
- Viết hoa toàn bộ chỉ dành cho nhãn ngắn, metadata hoặc navigation.

= Hình ảnh và đồ họa

#small-label("05 / Visual language")

== Nguyên tắc hình ảnh

Hình ảnh nên có cảm giác *sạch, có chủ đích và hướng về phía trước*. Ưu tiên bố cục có đường dẫn thị giác, ánh sáng rõ, bề mặt hiện đại và một điểm nhấn cyan/blue. Tránh hình ảnh quá bão hòa, stock photo dàn dựng hoặc nền nhiều chi tiết cạnh tranh với thông tin.

#grid(columns: (1fr, 1fr), gutter: 12pt,
  [#callout("Nên", [Nền sáng hoặc tối có kiểm soát; tương phản cao; hình khối rõ; góc chụp thể hiện chuyển động; có khoảng trống cho nội dung.], fill: soft-cyan)],
  [#callout("Tránh", [Gradient nặng; hiệu ứng 3D bóng loáng; quá nhiều màu neon; texture nhiễu; sử dụng cyan làm nền toàn màn hình.], fill: rgb("#FFF4F2"))]
)

== Ngôn ngữ hình khối

Các hình khối nên lấy cảm hứng từ ba đặc tính của logo: *vòng cung*, *đường cắt chéo* và *hướng tiến*. Khi thiết kế icon hoặc pattern, dùng góc bo vừa phải, đường nét đều và khoảng âm rộng.

#grid(columns: (1fr, 1fr, 1fr), gutter: 10pt,
  [#align(center)[#circle(radius: 0.55cm, fill: soft-cyan, stroke: 2pt + cyan)] #align(center)[Arc / vòng cung]],
  [#align(center)[#rotate(25deg, block(width: 1.2cm, height: 0.35cm, fill: cyan))] #align(center)[Cut / đường cắt]],
  [#align(center)[#polygon((0pt, 12pt), (24pt, 0pt), (24pt, 24pt), fill: blue)] #align(center)[Forward / hướng tiến]]
)

= Quy tắc sử dụng logo

#small-label("06 / Do & don't")

== Sử dụng đúng

#grid(columns: (1fr, 1fr, 1fr), gutter: 10pt,
  [#block(fill: white, stroke: 1pt + border, radius: 7pt, inset: 0.7cm)[#align(center)[#image("logo.png", width: 2.2cm)]] #align(center)[Nền trắng]],
  [#block(fill: ink, radius: 7pt, inset: 0.7cm)[#align(center)[#image("logo.png", width: 2.2cm)]] #align(center)[Nền tối]],
  [#block(fill: ice, radius: 7pt, inset: 0.7cm)[#align(center)[#image("logo.png", width: 2.2cm)]] #align(center)[Nền sáng trung tính]]
)

== Không được làm

#table(columns: (1fr, 1fr), gutter: 10pt,
  [#block(fill: ice, radius: 7pt, inset: 0.6cm)[#align(center)[#image("logo.png", width: 2.2cm)]]\ *Không xoay logo*],
  [#block(fill: ice, radius: 7pt, inset: 0.6cm)[#align(center)[#image("logo.png", width: 2.2cm)]]\ *Không thay đổi tỷ lệ*],
  [#block(fill: ice, radius: 7pt, inset: 0.6cm)[#align(center)[#image("logo.png", width: 2.2cm)]]\ *Không thêm bóng hoặc hiệu ứng*],
  [#block(fill: ice, radius: 7pt, inset: 0.6cm)[#align(center)[#image("logo.png", width: 2.2cm)]]\ *Không đặt trên nền rối*]
)

= Ứng dụng mẫu

#small-label("07 / Applications")

== App icon và avatar

App icon dùng logo ở trung tâm, với nền Charcoal Black hoặc Electric Cyan. Luôn đảm bảo khoảng thở đủ lớn ở các góc bo của nền hệ điều hành; không đặt logo sát mép.

#grid(columns: (1fr, 1fr, 1fr), gutter: 12pt,
  [#block(fill: ink, radius: 18pt, inset: 0.7cm)[#align(center)[#image("logo.png", width: 2.3cm)]] #align(center)[Dark app icon]],
  [#block(fill: cyan, radius: 18pt, inset: 0.7cm)[#align(center)[#image("logo.png", width: 2.3cm)]] #align(center)[Accent app icon]],
  [#block(fill: ice, radius: 18pt, inset: 0.7cm, stroke: 1pt + border)[#align(center)[#image("logo.png", width: 2.3cm)]] #align(center)[Light app icon]]
)

== Thẻ giao diện

#grid(columns: (1fr, 1fr), gutter: 14pt,
  [#block(fill: ink, radius: 10pt, inset: 14pt)[#text(size: 9pt, fill: rgb("#B9C7CE"))[QUICK START] #v(0.25cm) #text(size: 18pt, weight: "bold", fill: white)[Move forward.] #v(0.5cm) #box(fill: cyan, radius: 4pt, inset: (x: 8pt, y: 4pt))[#text(size: 8pt, weight: "bold", fill: ink)[EXPLORE]]]],
  [#block(fill: ice, radius: 10pt, inset: 14pt, stroke: 1pt + border)[#text(size: 9pt, fill: slate)[PROGRESS] #v(0.25cm) #text(size: 18pt, weight: "bold", fill: ink)[82%] #v(0.25cm) #block(fill: border, height: 0.18cm, radius: 3pt)[#block(fill: cyan, width: 82%, height: 0.18cm, radius: 3pt)[]]]]
)

== Danh mục tài sản bàn giao

#table(columns: (1.5fr, 1.4fr, 2.2fr), inset: 8pt, stroke: (x: none, y: 0.5pt + border),
  table.header([*Tài sản*], [*Định dạng*], [*Ghi chú*]),
  [Logo màu], [PNG nền trong suốt], [Dùng cho digital và mockup],
  [Logo đơn sắc], [SVG / PDF], [Dùng cho in ấn và kích thước nhỏ],
  [Bảng màu], [ASE / CSS / HEX], [Đồng bộ giữa design và development],
  [Typography], [Font files / style tokens], [Noto Sans chuẩn; Sora/Be Vietnam Pro tùy chọn],
  [Icon set], [SVG 24 px grid], [Nét đều, góc bo nhất quán]
)

= Checklist triển khai

#small-label("08 / Launch checklist")

#grid(columns: (1fr, 1fr), gutter: 12pt,
  [#text(size: 16pt, weight: "bold", fill: ink)[Trước khi xuất bản] #v(0.35cm)\ □ Logo có đủ vùng an toàn\\ □ Độ tương phản đạt yêu cầu\\ □ Font tiếng Việt hiển thị đúng\\ □ Màu dùng đúng HEX token\\ □ Không có hiệu ứng ngoài quy chuẩn],
  [#text(size: 16pt, weight: "bold", fill: ink)[Trước khi bàn giao] #v(0.35cm)\ □ Có bản màu, trắng và đơn sắc\\ □ Có file digital và file in\\ □ Có phiên bản app icon\\ □ Có tài liệu token cho developer\\ □ Có người phụ trách duyệt ngoại lệ]
)

#v(1cm)
#callout("Liên hệ quản trị thương hiệu", [Mọi biến thể mới của logo, màu sắc, typography hoặc icon cần được kiểm tra theo tài liệu này trước khi phát hành. Ngoại lệ chỉ nên được chấp thuận khi có lý do rõ ràng về khả năng đọc, khả năng tiếp cận hoặc yêu cầu kỹ thuật của nền tảng.], fill: soft-blue)

#pagebreak()
#align(center)[
  #v(5cm)
  #image("logo.png", width: 3.4cm)
  #v(1cm)
  #text(size: 24pt, weight: "bold", fill: ink)[Move forward.]\
  #v(0.3cm)
  #text(size: 11pt, fill: slate)[Brand identity reference · Version 1.0]
]
