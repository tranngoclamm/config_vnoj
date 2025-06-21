# 📝 1. Cài đặt máy chấm bằng Docker

## 📦 Cài đặt Docker và Docker Compose

```bash
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
```

---

## 🔧 Build image máy chấm từ mã nguồn đã cập nhật

```bash
git clone --recursive https://github.com/tnglam/judge-server.git
cd judge-server/.docker
sudo apt install make
sudo make judge-tiervnoj
```

---

## 📝 Tạo file cấu hình cho judge (nếu chưa có)

Tạo file `judge1.yml` tại:

```bash
sudo nano /home/admin123/judge-server/judge1.yml
```
Example:
```yaml
id: judge1
key: LurlH6AU5powkz5afnfuml5euXF3BeGUKZ31QzGBvutRS74pPiSsrWwOA
problem_storage_globs:
  - /problems/*
```

---

## 🖥️ Chạy máy chấm bằng Docker

```bash
sudo docker run \
  --name judge1 \
  --network="host" \
  -v /home/admin123/web/OJ/problems:/problems \
  -v /home/admin123/judge-server/judge1.yml:/problems/judge1.yml \
  --cap-add=SYS_PTRACE \
  -d \
  --restart=always \
  vnoj/judge-tiervnoj:latest \
  run -p 9999 -c /problems/judge1.yml localhost -A 0.0.0.0 -a 12341
```

⚠️ CHÚ Ý:
- Đảm bảo mỗi Judge có: `--name` và mã `-a` riêng biệt (ví dụ: 12341, 12342, ...)
- `-v /home/admin123/web/OJ/problems:/problems`  
  Mount thư mục chứa problems vào container.
- `-v /home/admin123/judge-server/judge1.yml:/problems/judge1.yml`  
  Mount file cấu hình Judge vào container.
- `-c /problems/judge1.yml`  
  Trỏ đến file cấu hình trong container.

---

## ✅ Kiểm tra trạng thái máy chấm

```bash
sudo docker ps -a
sudo docker logs judge1
```
## 🧪 Tạo problem với ID `run_ide` và thêm test data (nếu chưa có)

📝 Đây là một **problem giả** dùng riêng cho **chạy code trực tiếp trong IDE**, sử dụng để nhận input/output từ người dùng.

***

# 🛠️ 2. Auto Update Source Code OJ

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

