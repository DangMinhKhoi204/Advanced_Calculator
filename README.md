Máy tính nâng cao (Advanced Calculator)

Ứng dụng máy tính di động chuyên nghiệp với các tính năng nâng cao, được xây dựng bằng Flutter.

Mô tả dự án

Advanced Calculator là ứng dụng máy tính đầy đủ tính năng, hỗ trợ:

Ba chế độ: Cơ bản, Khoa học, Lập trình

Hàm khoa học: Hàm lượng giác (sin, cos, tan), Logarithm (ln, log), Lũy thừa, Căn bậc n, Giai thừa, Hằng số (π, e)

Hàm nhớ: M+, M-, MR, MC

Bộ phân tích biểu thức: Hỗ trợ thứ tự toán tử (PEMDAS), dấu ngoặc, nhân ngầm

Lịch sử: Lưu 25/50/100 phép tính gần nhất với khả năng lưu trữ

Hệ thống chủ đề: Giao diện sáng, tối, theo hệ thống với chuyển đổi mượt mà

Cài đặt: Độ chính xác thập phân, chế độ góc (Độ/Radian), rung phản hồi, âm thanh

Điều khiển cử chỉ: Vuốt, nhấn lâu, chụm để thay đổi kích thước chữ

Hiệu ứng hoạt ảnh: Nhấn nút, chuyển chế độ, rung khi lỗi, hiển thị kết quả mờ dần

Kiểm thử đơn vị & tích hợp: Đảm bảo >80% bao phủ kiểm thử

Tối ưu hiệu suất: Xử lý các phép tính phức tạp hiệu quả

Ứng dụng được triển khai theo kiến trúc sạch và quản lý trạng thái nâng cao bằng Provider.

Ảnh chụp màn hình / GIF
Chế độ cơ bản	Chế độ khoa học	Chế độ lập trình
Basic	Scientific	Programmer

Thay thế ảnh trên bằng ảnh/GIF thực tế của bạn trong thư mục screenshots/.

Tính năng
Chế độ máy tính

Cơ bản: Các phép tính số học tiêu chuẩn

Khoa học: sin, cos, tan, ln, log, lũy thừa, căn bậc n, giai thừa

Lập trình: Chuyển đổi nhị phân, bát phân, thập phân, thập lục phân; các phép toán bitwise; dịch bit

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

Hướng dẫn cài đặt & chạy

Clone hoặc tải project về:

git clone <link-repo-cua-ban>
cd advanced_calculator


Cài đặt dependencies:

flutter pub get


Chạy ứng dụng trên thiết bị Android/iOS:

flutter run


Lưu ý: cần cài đặt Flutter SDK và thiết lập môi trường Android/iOS trước.

Kiến trúc dự án
lib/
├─ main.dart
├─ models/
├─ providers/
├─ screens/
├─ widgets/
├─ utils/
├─ services/

Kiểm thử

Unit tests: Đảm bảo >80% bao phủ logic tính toán

Integration tests: Kiểm tra chuỗi nhấn nút, chuyển đổi chế độ, lưu/đọc lịch sử, lưu theme

Ghi chú

Hỗ trợ 3 chế độ: Cơ bản, Khoa học, Lập trình

Tính năng khoa học, hàm nhớ, lịch sử, theme và cử chỉ hoạt động đầy đủ

UI tối ưu theo thiết kế chuyên nghiệp

Code theo kiến trúc sạch, dễ bảo trì và mở rộng
