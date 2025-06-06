#!/bin/bash
rsync -a ./ ../OJ_backup/
WORK_DIR="$(pwd)"

echo "📁 Đang làm việc tại: $WORK_DIR"

echo "🔽 Đang clone repo từ GitHub..."
cd /tmp
rm -rf OJ_temp_clone
git clone https://github.com/tranngoclamm/OJ.git OJ_temp_clone
cd OJ_temp_clone

AUTHORS=("Tran Ngoc Lam" "tranngoclamm")
EXPORT_DIR="./export_from_authors"

mkdir -p "$EXPORT_DIR"

# Lưu commit đã xử lý để tránh trùng lặp
COMMIT_HASHES=()

for AUTHOR in "${AUTHORS[@]}"; do
  echo "🧑‍💻 Bắt đầu tìm commit từ author khớp: $AUTHOR"

  MATCHED_COMMITS=$(git log --all --reverse --pretty=format:"%H|%an|%ae|%ad" --date=iso | grep -i "$AUTHOR" | cut -d'|' -f1)

  for commit_hash in $MATCHED_COMMITS; do
    if [[ " ${COMMIT_HASHES[*]} " =~ " $commit_hash " ]]; then
      continue
    fi
    COMMIT_HASHES+=("$commit_hash")

    echo "🔄 Đang xử lý commit: $commit_hash"

    # Lấy danh sách file được thêm (A) hoặc sửa (M)
    git diff-tree --no-commit-id --name-status -r "$commit_hash" | grep -E '^[AM]' | while read status file; do
    mkdir -p "$EXPORT_DIR/$(dirname "$file")"

    if git show "$commit_hash:$file" > "$EXPORT_DIR/$file" 2>/dev/null; then
        echo "✅ Export: $file"
    else
        echo "⚠️ Không thể export: $file từ commit $commit_hash"
    fi
    done
  done
done

echo "🎉 Hoàn tất! Toàn bộ file đã được lưu ở: $EXPORT_DIR"
sudo rm export_from_authors/dmoj/settings.py
cd "$WORK_DIR"
rsync -a --exclude=node_modules --exclude=__pycache__ --exclude=.venv /tmp/OJ_temp_clone/export_from_authors/ ./

sudo sed -i \
-e 's|^#\?EVENT_DAEMON_USE *=.*|EVENT_DAEMON_USE = True|' \
-e 's|^#\?EVENT_DAEMON_GET *=.*|EVENT_DAEMON_GET = "ws://127.0.0.1:15100/"|' \
-e 's|^#\?EVENT_DAEMON_POST *=.*|EVENT_DAEMON_POST = "ws://127.0.0.1:15101/"|' \
-e 's|^#\?EVENT_DAEMON_POLL *=.*|EVENT_DAEMON_POLL = "ws://127.0.0.1:15102/"|' \
dmoj/local_settings.py

sudo rm -r config_example
sudo rm uwsgi.ini.example
sudo rm -rf /tmp/OJ_temp_clone
pip install python-docx
./manage.py makemigrations
./manage.py migrate
./manage.py collectstatic --noinput
sudo supervisorctl restart all
sudo supervisorctl status
