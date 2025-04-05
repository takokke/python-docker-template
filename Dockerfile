# syntax=docker/dockerfile:1

# ベースイメージを指定
FROM python:3.8-slim-buster

# 作業ディレクトリ作成
WORKDIR /app

# ローカルのソースコードをコンテナにコピー
COPY . .

CMD ["/bin/bash"]