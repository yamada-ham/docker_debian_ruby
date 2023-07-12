#!/bin/sh

# Redisサーバーを起動
service redis-server start

# バックグラウンドで実行するパッケージ
# apache2
apache2ctl -D FOREGROUND &

# Supervisor
/usr/bin/supervisord &

cron &

# スクリプトが終了しないようにする
tail -f /dev/null
