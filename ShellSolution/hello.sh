#!/usr/bin/env bash
set -euo pipefail

OUT_FILE="/tmp/hello.txt"
PID_FILE="/tmp/hello.pid"

echo "$$" > "$PID_FILE"

while true; do
  echo "Hello world" >> "$OUT_FILE"
  sleep 10
done

#PID_FILE yazıyorum çünkü 3.taskta hangi processi kill edeceğimizi bilmemiz lazım

#nohup /path/to/hello.sh >/tmp/hello.log 2>&1 & bu komutla scripti arka planda çalıştırabiliriz. bu komutu aynı zamanda txt dosyası olarak ekleyeceğim folder içine
