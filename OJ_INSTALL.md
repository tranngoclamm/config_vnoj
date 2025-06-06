# 🛠️ Script Auto Update Source Code OJ

### Bước 1: Tải file `auto_update.sh` vào thư mục tương ứng:

| Thư mục                      | 💻 Lệnh                                   |
|--------------------------------|---------------------------------------------------------|
| `web/OJ`                       | `cd ~/web/OJ && wget -O auto_update.sh https://raw.githubusercontent.com/tranngoclamm/config_vnoj/main/auto_update.sh`|
| `web/site` | `cd ~/web/site && wget -O auto_update.sh https://raw.githubusercontent.com/tranngoclamm/config_vnoj/main/auto_update.sh` |

### Bước 2: Cấp quyền thực thi cho script
```bash
sudo chmod +x auto_update.sh
```

### Bước 3: Chạy 
```bash
./auto_update.sh
```
Nhập pass nếu cần

## 🔄 Sau khi cập nhật

### ✅ Làm mới trình duyệt để tránh cache
Nhấn: `Ctrl + Shift + R` (hoặc `Cmd + Shift + R` trên macOS)

### 🐛 Nếu lỗi, kiểm tra logs:
```bash
sudo supervisorctl restart all    # thử khởi động lại
sudo supervisorctl status         # xem trạng thái
sudo tail -n 50 /path/to/logfile.log  # xem log cụ thể, thay đường dẫn phù hợp
```

File log nằm ở file cấu hình supervisor (thường trong `/etc/supervisor/conf.d/`) xem dòng`stderr_logfile=`.

---

## 📦 Backup mã nguồn cũ

Thư mục backup OJ sẽ được tạo tại:
```
../OJ_backup/
```
Có thể khôi phục lại mã nguồn OJ cũ từ thư mục này nếu cần.

---

