#!/usr/bin/env bash
D=$(cd "$(dirname "$0")" && pwd); sudo install -m755 "$D/arx" /usr/local/bin/arx
