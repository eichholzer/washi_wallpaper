# Washi Wallpaper

Ein ruhiger, audioreaktiver Bildschirmhintergrund: ein Raster aus Leuchtboxen hinter Japanpapier (Washi), wie ein
LED-Lichtbild mit SK6812-LEDs. Das Licht fliesst langsam und reagiert gemittelt über Sekunden auf das Mikrofon.
Die Farben bleiben im Bereich, den WWA-LEDs darstellen können (Amber 1800 K bis Kaltweiss 6500 K).

Ein einziger Modus: Wird nicht gesprochen, wird das Bild über fünf Minuten stetig dunkler, bis fast nichts mehr zu
sehen ist. Sobald jemand spricht, wacht es innert Sekunden wieder auf; die Stimme hebt zusätzlich Helligkeit und Kontrast. Anhaltender Lärm belastet die LEDs: Einzelne Boxen
fallen aus, werden dunkel und zucken kalt; sie erholen sich erst, wenn es wieder ruhig ist. Das Raster füllt den
ganzen Bildschirm mit ganzen, fast quadratischen Zellen.
## Starten

```sh
./start.sh            # Modus "feld" (Standard)
./start.sh glut       # oder: wellen
```

`start.sh` startet einen lokalen Server auf `http://localhost:8765` (das Mikrofon braucht `localhost`) und öffnet die
Seite im Vollbild in Chrome. Ohne Chrome öffnet sie im Standardbrowser.

## Bedienung

| Taste | Wirkung |
|---|---|
| `D` | Demo-Audio ↔ Mikrofon |

URL-Parameter: `?reihen=8` (Zellengrösse), `?minuten=5` (Zeit bis dunkel), `?demo=1`, `?stille=1&stilleSek=200` (Stille testen), `?stress=0.6` (Lärmbelastung vorgeben, zum Testen), `?mic=teams` (anderes Mikrofon; Standard ist das eingebaute des Macs).

## Als Desktop-Hintergrund (macOS)

Mit [Plash](https://sindresorhus.com/plash) die URL `http://localhost:8765/index.html` als Hintergrund
setzen. Ob Plash das Mikrofon freigibt, hängt von Plash ab; sonst `&demo=1` anhängen.

## Dateien

- `index.html`: die Seite (WebGL-Shader für Papier und Licht, Web Audio für das Spektrum)
- `index_laterne.html` + `assets/`: Variante aus dem Foto einer echten Andon-Laterne mit Sprachbefehlen
  (Wind, Regen, Nacht, Licht, Schnee, Schmetterling, Wanderer, Hallo, Ruhe); öffnen über `http://localhost:8765/index_laterne.html`
- `index_andon.html`, `index_wanderer_v1.html`: weitere prozedurale Varianten
- `start.sh`: lokaler Server + Vollbild
- `wled_palette_washi_wwa.json`: dieselbe Farbskala als WLED-Palette (als `palette0.json` über `http://<IP>/edit` hochladen)
