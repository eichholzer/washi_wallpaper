# Washi Wallpaper

Ein Bildschirmhintergrund aus dem Foto einer echten Andon-Laterne (Lackrahmen, Kumiko-Kreuz, Washi mit Pfingstrosen-
Tuschmalerei). Das Licht hinter dem Papier atmet mit deiner Stimme und flackert wie eine Glühbirne; der gelbe
Schmetterling flattert, wenn du sprichst. Hinter dem Papier wandert eine Tuschefigur mit Strohhut und Stab endlos
vorbei. Gesprochene Worte steuern die Szene (Chrome, Web Speech API): **Wind, Regen, Nacht, Licht, Schnee,
Schmetterling, Wanderer, Hallo, Ruhe**. Das Licht fliesst langsam und reagiert gemittelt über Sekunden auf das Mikrofon.
Die Farben bleiben im Bereich, den WWA-LEDs darstellen können (Amber 1800 K bis Kaltweiss 6500 K).

## Starten

```sh
./start.sh            # Modus "feld" (Standard)
./start.sh glut       # oder: wellen
```

`start.sh` startet einen lokalen Server auf `http://localhost:8765` (das Mikrofon braucht `localhost`) und öffnet die
Seite im Vollbild in Chrome. Ohne Chrome öffnet sie im Standardbrowser.

## Bedienung

Beim ersten Start Mikrofon erlauben. Sprich ein Stichwort, oder nutze die Tasten:

| Wort | Taste | Wirkung |
|---|---|---|
| Wind | `1` | Blätter der Malerei fliegen, der Wanderer stemmt sich gegen den Wind |
| Regen | `2` | feine Regenstriche in Tusche |
| Nacht / Mond | `3` | Licht wird gedämpft, ein Mond scheint durchs Papier, Glühwürmchen |
| Licht / Sonne | `4` | heller und wärmer |
| Schnee | `5` | Schneeflocken vor dem Papier |
| Schmetterling | `6` | der Schmetterling tanzt in die Mitte |
| Wanderer | `7` | er hält inne und verbeugt sich |
| Hallo | `8` | das Licht pulsiert zum Gruss |
| Ruhe | `9` | alles zurück |

URL-Parameter: `?fx=night,wind` (Startzustand), `?start=0.6` (Position des Wanderers), `?demo=1` (ohne Mikrofon).

## Als Desktop-Hintergrund (macOS)

Mit [Plash](https://sindresorhus.com/plash) die URL `http://localhost:8765/index.html?modus=feld` als Hintergrund
setzen. Ob Plash das Mikrofon freigibt, hängt von Plash ab; sonst `&demo=1` anhängen.

## Dateien

- `index.html`: die Seite (Canvas 2D: Foto, maskiertes Licht, Tusche-Ebene, Schmetterling, Filmkorn; Web Audio + Web Speech)
- `assets/lantern.jpg`, `assets/mask.png`, `assets/geometry.json`: aus dem Foto abgeleitet (Fenstermaske ohne Stäbe,
  Position von Schmetterling und Lichtquelle); `assets/IMG_1622_oriented.jpg` ist das Original
- `index_wanderer_v1.html`, `index_andon.html`, `index_favorit.html`: frühere, rein prozedurale Versionen
- `start.sh`: lokaler Server + Vollbild
- `wled_palette_washi_wwa.json`: Farbskala als WLED-Palette für das echte Lichtbild
