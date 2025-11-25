Máy tính nâng cao (Advanced Calculator)

Một ứng dụng máy tính di động chuyên nghiệp với các tính năng nâng cao, được xây dựng bằng Flutter.

Mô tả dự án (Project Description)

Advanced Calculator là ứng dụng máy tính đầy đủ tính năng, hỗ trợ:

Ba chế độ: Cơ bản, Khoa học, Lập trình

Hàm khoa học: Hàm lượng giác, Logarithm, Phép lũy thừa, Giai thừa, Hằng số (π, e)

Hàm nhớ: M+, M-, MR, MC

Bộ phân tích biểu thức: Hỗ trợ thứ tự toán tử (PEMDAS), dấu ngoặc, nhân ngầm

Lịch sử: Lưu 25/50/100 phép tính gần nhất với khả năng lưu trữ

Hệ thống chủ đề: Giao diện sáng, tối, theo hệ thống với chuyển đổi mượt mà

Cài đặt: Độ chính xác thập phân, chế độ góc (Độ/Radian), rung phản hồi, âm thanh

Điều khiển cử chỉ: Vuốt, nhấn lâu, chụm để thay đổi kích thước chữ

Hiệu ứng hoạt ảnh: Nhấn nút, chuyển chế độ, rung khi lỗi, hiển thị kết quả mờ dần

Kiểm thử đơn vị & tích hợp: Đảm bảo >80% bao phủ kiểm thử

Tối ưu hiệu suất: Xử lý các phép tính phức tạp hiệu quả

Dự án được triển khai theo kiến trúc sạch và quản lý trạng thái nâng cao sử dụng Provider.

Ảnh chụp màn hình / GIF (Screenshots / GIFs)
Chế độ cơ bản	Chế độ khoa học	Chế độ lập trình
Basic	Scientific	Programmer

Thay thế các ảnh trên bằng ảnh hoặc GIF thực tế của bạn.

Tính năng (Features)
Chế độ máy tính

Cơ bản: Các phép tính số học tiêu chuẩn

Khoa học: sin, cos, tan, ln, log, lũy thừa, căn bậc n, giai thừa

Lập trình: Chuyển đổi nhị phân, bát phân, thập phân, hệ thập lục phân; các phép toán bitwise; dịch bit

Hàm nhớ (Memory Functions)

M+: Cộng giá trị hiện tại vào bộ nhớ

M-: Trừ giá trị hiện tại khỏi bộ nhớ

MR: Gọi giá trị từ bộ nhớ

MC: Xóa bộ nhớ

Lịch sử (History)

Lưu các phép tính gần nhất

Nhấn để sử dụng lại

Vuốt lên để mở

Nhấn lâu để xóa lịch sử

Cài đặt (Settings)

Chọn chủ đề (Sáng, Tối, Theo hệ thống)

Độ chính xác thập phân (2–10)

Chế độ góc (Độ/Radian)

Rung phản hồi Bật/Tắt

Âm thanh Bật/Tắt

Kích thước lịch sử (25/50/100)

Xóa toàn bộ lịch sử với xác nhận

Cử chỉ & Hoạt ảnh (Gestures & Animations)

Vuốt phải để xóa ký tự cuối

Chụm để thay đổi kích thước chữ

Hiệu ứng phóng to khi nhấn nút

Kết quả hiển thị mờ dần

Rung khi xảy ra lỗi

Kiến trúc dự án (Project Architecture)

lib/
├── main.dart
├── models/
│ ├── calculation_history.dart
│ ├── calculator_mode.dart
│ └── calculator_settings.dart
├── providers/
│ ├── calculator_provider.dart
│ ├── theme_provider.dart
│ └── history_provider.dart
├── screens/
│ ├── calculator_screen.dart
│ ├── history_screen.dart
│ └── settings_screen.dart
├── widgets/
│ ├── display_area.dart
│ ├── button_grid.dart
│ ├── calculator_button.dart
│ └── mode_selector.dart
├── utils/
│ ├── calculator_logic.dart
│ └── expression_parser.dart
├── constants.dart
└── services/
└── storage_service.dart
