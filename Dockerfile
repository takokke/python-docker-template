# syntax=docker/dockerfile:1

# ベースイメージを指定
FROM python:3.9.21-slim-bullseye

# 作業ディレクトリ作成
WORKDIR /app

# ローカルのソースコードをコンテナにコピー
COPY . .

# docker runでコンテナを起動したとき、実行するコマンド
# コンテナに入る
CMD ["/bin/bash"]