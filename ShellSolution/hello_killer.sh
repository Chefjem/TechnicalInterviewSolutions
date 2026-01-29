#!/usr/bin/env bash
OUT="/tmp/hello.txt"
PID="/tmp/hello.pid"
DAEMON_CMD="/tmp/daemon.txt"

COUNT=$(wc -l < "$OUT")

if [ "$COUNT" -eq 10 ]; then
  if [ -f "$PID" ]; then
    kill "$(cat "$PID")" 2>/dev/null
  fi
  rm -f "$OUT" "$PID"
  sh "$DAEMON_CMD"
fi

#script cron friendly oldu çünkü herhangi bir döngü veya sleep yok bu yüzden cron ile istediğim zaman çalıştıralabilirim