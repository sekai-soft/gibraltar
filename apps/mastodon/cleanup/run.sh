#! /bin/sh
set -eu

if [ -z "$SCHEDULE" ]; then
  sh cleanup.sh
else
  exec go-cron "$SCHEDULE" /bin/sh cleanup.sh
fi
