# tour.unige.uz

Geologiya fanlari universiteti uchun 360° virtual sayohat: tanlash sahifasi va ikkita Pano2VR turi.

- `index.html`, `assets/` — tanlash sahifasi (UZ / RU / EN)
- `kampus` → `Tour_GFU_last1/output` — universitet kampusi (66 panorama)
- `muzey` → `Tour_Muzey_last_2/output` — Davlat geologiya muzeyi (19 panorama)
- `deploy/` — serverga yuklash skripti va nginx sozlamasi

## Serverda ishga tushirish

```bash
git clone https://github.com/JanobRais/tour.unige.uz.git /var/www/tour
sudo cp /var/www/tour/deploy/nginx-tour.conf /etc/nginx/sites-available/tour.unigeo.uz
sudo ln -s /etc/nginx/sites-available/tour.unigeo.uz /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx
sudo certbot --nginx -d tour.unigeo.uz
```

`kampus` va `muzey` symlink bo'lgani uchun nginx ularni o'zi kuzatadi (standart sozlamada `disable_symlinks off`).
Yangilash: `cd /var/www/tour && git pull`.
