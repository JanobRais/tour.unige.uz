#!/usr/bin/env bash
# Ishlatish: ./deploy/deploy.sh user@server
# Turlarni (git'da yo'q) serverdagi /var/www/tour/kampus va /var/www/tour/muzey ga yuklaydi.
# Sahifaning o'zi (index.html, assets/) serverga git orqali keladi.
# kampus/ va muzey/ lokal symlink: -L ularni haqiqiy papka sifatida yuboradi.
set -euo pipefail
SERVER="${1:?server manzilini bering: ./deploy/deploy.sh user@server}"
cd "$(dirname "$0")/.."

for tour in kampus muzey; do
  rsync -avzL --delete --exclude '.DS_Store' --exclude 'testsound.mp3' \
    "$tour/" "$SERVER:/var/www/tour/$tour/"
done
