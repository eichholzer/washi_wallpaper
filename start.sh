#!/bin/zsh
# Startet die Washi-Klang-Seite lokal (Mikrofon braucht http://localhost) und oeffnet sie im Vollbild.
# Aufruf: ./start.sh [feld|glut|wellen]
cd "$(dirname "$0")"
MODUS=${1:-feld}
PORT=8765
lsof -ti tcp:$PORT >/dev/null 2>&1 || (python3 -m http.server $PORT --bind 127.0.0.1 >/dev/null 2>&1 &)
sleep 1
URL="http://localhost:$PORT/index.html?modus=$MODUS"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
if [ -x "$CHROME" ]; then
  "$CHROME" --app="$URL" --start-fullscreen --autoplay-policy=no-user-gesture-required \
            --user-data-dir="$HOME/.washi-klang-chrome" >/dev/null 2>&1 &
else
  open "$URL"
fi
echo "Washi Klang laeuft: $URL"
echo "Als Desktop-Hintergrund: in Plash diese URL eintragen (Mikrofon ggf. nur im Browser-Fenster)."
