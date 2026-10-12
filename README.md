# tour.unige.uz

Geologiya fanlari universiteti uchun 360° virtual sayohat: tanlash sahifasi va ikkita Pano2VR turi.

- `index.html`, `assets/` — tanlash sahifasi (UZ / RU / EN)
- `kampus/` — universitet kampusi (66 panorama), Pano2VR eksporti
- `muzey/` — Davlat geologiya muzeyi (19 panorama), Pano2VR eksporti

Turlar katta (~2 GB), shuning uchun git'da saqlanmaydi va serverga alohida yuklanadi.

## Saytning tuzilmasi

```
<sayt papkasi>/
├── index.html
├── assets/
├── kampus/   ← Tour_GFU_last1/output ichidagi fayllar
└── muzey/    ← Tour_Muzey_last_2/output ichidagi fayllar
```

Statik sayt: PHP ham, ma'lumotlar bazasi ham kerak emas.
