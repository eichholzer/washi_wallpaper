# Washi Wallpaper

Ein ruhiger, audioreaktiver Bildschirmhintergrund: warmes Laternenlicht hinter Washi-Papier mit Kumiko-Gitter und
Lackrahmen. Hinter dem Papier geht ein Wanderer mit Strohhut und Stab als weicher Schatten über einen Tusche-Horizont,
endlos, im Tempo eines Wiegenlieds, ohne je anzukommen. Filmkorn, leichtes Flackern und unregelmässiges Holz nehmen
den digitalen Eindruck. Inspiriert von japanischen Andon-Laternen und einem LED-Lichtbild mit SK6812-LEDs. Das Licht fliesst langsam und reagiert gemittelt über Sekunden auf das Mikrofon.
Die Farben bleiben im Bereich, den WWA-LEDs darstellen können (Amber 1800 K bis Kaltweiss 6500 K).

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
| `1` | Feld: fliessendes Lichtfeld, Ton hebt Helligkeit, Bässe wärmer, Höhen kühler |
| `2` | Glut: Klang steigt von unten auf und verglimmt |
| `3` | Atem: das Laternenlicht atmet langsam |
| `W` | Motiv: Wanderer ↔ Ast mit Ahornblättern |
| `M` | Malerei/Figur ein/aus |
| `N` | neue Malerei (Ast und Blätter werden neu gezeichnet) |
| `D` | Demo-Audio ↔ Mikrofon |

URL-Parameter: `?modus=feld|glut|wellen`, `?reihen=6` (Feldgrösse, immer ganze Quadrate), `?motiv=wanderer|ast`, `?malerei=0`, `?seed=7` (feste Landschaft/Malerei), `?demo=1`.

## Als Desktop-Hintergrund (macOS)

Mit [Plash](https://sindresorhus.com/plash) die URL `http://localhost:8765/index.html?modus=feld` als Hintergrund
setzen. Ob Plash das Mikrofon freigibt, hängt von Plash ab; sonst `&demo=1` anhängen.

## Dateien

- `index.html`: die Seite (WebGL-Shader für Papier und Licht, Web Audio für das Spektrum)
- `index_andon.html`: Laternenstil mit Ast-Malerei
- `index_favorit.html`: erste Version (Leuchtboxen ohne Laternenstil)
- `start.sh`: lokaler Server + Vollbild
- `wled_palette_washi_wwa.json`: dieselbe Farbskala als WLED-Palette (als `palette0.json` über `http://<IP>/edit` hochladen)
