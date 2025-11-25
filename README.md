# Advanced Calculator

**Ứng dụng máy tính di động chuyên nghiệp với các tính năng nâng cao, xây dựng bằng Flutter.**

---

## **Mô tả dự án**

Advanced Calculator là ứng dụng máy tính đầy đủ tính năng, hỗ trợ:

- **Ba chế độ:** Cơ bản (Basic), Khoa học (Scientific), Lập trình (Programmer)
- **Hàm khoa học:** sin, cos, tan, ln, log, lũy thừa, căn bậc hai, giai thừa, hằng số (π, e)
- **Hàm nhớ:** M+, M-, MR, MC
- **Parser biểu thức:** Hỗ trợ thứ tự ưu tiên toán học (PEMDAS), dấu ngoặc, nhân ẩn
- **Lịch sử:** Lưu 25/50/100 phép tính gần nhất với khả năng lưu trữ
- **Hệ thống giao diện:** Light, Dark, System với hiệu ứng chuyển mượt
- **Cài đặt:** Độ chính xác thập phân, chế độ góc (Degrees/Radians), phản hồi rung, âm thanh
- **Điều khiển cử chỉ:** Vuốt, nhấn lâu, chụm để phóng to
- **Hoạt ảnh:** Nhấn nút, chuyển đổi chế độ, rung lỗi, hiển thị kết quả fade-in
- **Unit & integration tests:** Đảm bảo coverage >80%
- **Hiệu năng tối ưu:** Xử lý biểu thức phức tạp mượt mà

Ứng dụng được phát triển theo **Clean Architecture** và quản lý trạng thái nâng cao bằng **Provider**.

---

## **Ảnh minh họa / GIF**

| Chế độ Cơ bản | Chế độ Khoa học | Chế độ Lập trình |
|---------------|----------------|-----------------|
| ![Basic](screenshots/basic_mode.png) | ![Scientific](screenshots/scientific_mode.png) | ![Programmer](screenshots/programmer_mode.png) |

> Lưu ý: Thay đường dẫn ảnh bằng các ảnh thực tế trong thư mục `screenshots/`.

---

## **Các tính năng**

### **Chế độ máy tính**
- **Basic:** Phép toán cơ bản (+, -, ×, ÷, %)
- **Scientific:** sin, cos, tan, ln, log, x², √, x^y, n!
- **Programmer:** Chuyển đổi Binary, Octal, Decimal, Hex; toán tử bitwise; shift <<, >>

### **Hàm nhớ**
- **M+:** Cộng giá trị hiện tại vào bộ nhớ
- **M-:** Trừ giá trị hiện tại khỏi bộ nhớ
- **MR:** Lấy lại giá trị trong bộ nhớ
- **MC:** Xóa bộ nhớ

### **Lịch sử**
- Lưu các phép tính gần nhất
- Chạm để sử dụng lại
- Vuốt lên để mở
- Nhấn lâu để xóa lịch sử

### **Cài đặt**
- Chọn giao diện (Light, Dark, System)
- Độ chính xác thập phân (2–10)
- Chế độ góc (Degrees/Radians)
- Phản hồi rung On/Off
- Âm thanh On/Off
- Kích thước lịch sử (25/50/100)
- Xóa tất cả lịch sử với xác nhận

### **Cử chỉ & Hoạt ảnh**
- Vuốt phải để xóa ký tự cuối
- Chụm để thay đổi kích thước font
- Nút nhấn với hiệu ứng scale
- Kết quả hiển thị fade-in
- Rung lỗi khi phép tính sai

---

## **Kiến trúc dự án**

Ứng dụng được tổ chức theo **Clean Architecture**:

```txt
lib/
│
├── main.dart
│
├── models/
│   ├── calculation_history.dart
│   ├── calculator_mode.dart
│   └── calculator_settings.dart
│
├── providers/
│   ├── calculator_provider.dart
│   ├── theme_provider.dart
│   └── history_provider.dart
│
├── screens/
│   ├── calculator_screen.dart
│   ├── history_screen.dart
│   └── settings_screen.dart
│
├── widgets/
│   ├── display_area.dart
│   ├── button_grid.dart
│   ├── calculator_button.dart
│   └── mode_selector.dart
│
├── utils/
│   ├── calculator_logic.dart
│   ├── expression_parser.dart
│   └── constants.dart
│
└── services/
    └── storage_service.dart
