#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ ! -f "./frp/files/frps" ]; then
  cd "$SCRIPT_DIR/frp"
  bash ./download-release.sh
else
  echo "frps binary exists, skip download."
fi

cd $SCRIPT_DIR

if [ ! -f "./mysql/initdb.sql" ]; then
  cd "$SCRIPT_DIR/mysql"
  bash ./acquire-init-sql.sh
else
  echo "initdb script exists, skip init."
fi

cd $SCRIPT_DIR

sudo docker compose up -p guacamole --build --always-recreate-deps --no-attach --abort-on-container-exit	