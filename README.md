# tour.unige.uz

Geologiya fanlari universiteti uchun 360° virtual sayohat: tanlash sahifasi va ikkita Pano2VR turi.

- `index.html`, `assets/` — tanlash sahifasi (UZ / RU / EN)
- `kampus/` — universitet kampusi (66 panorama), Pano2VR eksporti
- `muzey/` — Davlat geologiya muzeyi (19 panorama), Pano2VR eksporti
- `deploy/` — turlarni yuklash skripti va nginx sozlamasi

Turlar katta (~2 GB), shuning uchun git'da saqlanmaydi. Serverga alohida yuklanadi.

## Serverda ishga tushirish

```bash
# 1. Sahifa
sudo git clone https://github.com/JanobRais/tour.unige.uz.git /var/www/tour
sudo chown -R "$USER" /var/www/tour

# 2. Turlar: Pano2VR'ning output/ papkalari shu yerga yuklanadi
#    /var/www/tour/kampus/  ← Tour_GFU_last1/output ichidagi fayllar
#    /var/www/tour/muzey/   ← Tour_Muzey_last_2/output ichidagi fayllar
#    (lokal kompyuterdan: ./deploy/deploy.sh user@server, yoki scp / SFTP bilan qo'lda)

# 3. nginx va HTTPS
sudo cp /var/www/tour/deploy/nginx-tour.conf /etc/nginx/sites-available/tour.unigeo.uz
sudo ln -s /etc/nginx/sites-available/tour.unigeo.uz /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx
sudo certbot --nginx -d tour.unigeo.uz
```

Sahifani yangilash: `cd /var/www/tour && git pull`. Turlarni yangilash: qayta yuklash.
