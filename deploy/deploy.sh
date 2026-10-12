#!/usr/bin/env bash
# Ishlatish: ./deploy/deploy.sh user@server
# Tanlash sahifasi va ikkala turni serverdagi /var/www/tour ga yuklaydi.
# kampus/ va muzey/ symlink: -L ularni haqiqiy papka sifatida yuboradi.
set -euo pipefail
SERVER="${1:?server manzilini bering: ./deploy/deploy.sh user@server}"
cd "$(dirname "$0")/.."

ssh "$SERVER" 'sudo mkdir -p /var/www/tour && sudo chown "$USER" /var/www/tour'
rsync -avzL --delete \
  --exclude 'Tour_*/' --exclude 'deploy/' --exclude '.DS_Store' \
  --exclude 'testsound.mp3' \
  ./ "$SERVER":/var/www/tour/
