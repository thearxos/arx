#!/usr/bin/env bash
D=$(cd "$(dirname "$0")" && pwd); sudo install -m755 "$D/arx" /usr/local/bin/arx
# ship the ARXOS arsenal taxonomy so `arx weapons` works out of the box
[ -f "$D/tools.db" ] && sudo install -Dm644 "$D/tools.db" /usr/share/arxos/tools.db
echo "arx installed ($([ -f /usr/share/arxos/tools.db ] && grep -cE "^[A-Za-z0-9._+-]+\|[OBDR]\|" /usr/share/arxos/tools.db) arsenal tools)"
