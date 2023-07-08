#!/bin/bash

source ~/.bash &

# バックグラウンドで実行するパッケージ
# apache2
apache2ctl -D FOREGROUND &

# Supervisor
/usr/bin/supervisord &

cron &

# スクリプトが終了しないようにする
tail -f /dev/null
