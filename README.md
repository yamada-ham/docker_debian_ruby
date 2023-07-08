# コンテナ型LAMP環境

## システム環境
```
Ruby
PostgreSQL
Apache
Node.js ver18.x
```

## 構築手順
```
docker-compose up -d

docker-compose exec web bash
```


## メモ
```
./web/html にアプリケーションを設置する

# バーチャルホスト設定ファイル
web/volumes/apache2/sites-available/virtual.host.conf
web/volumes/apache2/ports.conf
```