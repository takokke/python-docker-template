# Python3.8 Docker環境構築のテンプレート

イメージの作成
```shell
$ docker build -t --no-cache イメージ名:タグ名 .
```

ボリュームマウントでcurrent directryを同期
```shell
$ docker run -it --rm -v $(pwd):/app イメージ名
```