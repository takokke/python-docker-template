# Python3.8 Docker環境構築のテンプレート

イメージの作成
```shell
$ docker build -t イメージ名:タグ名 .
```

対話モードで、コンテナを起動
```shell
$ docker run -it --rm イメージ名 /bin/bash
```

ボリュームマウントでcurrent directryを同期
```shell
$ docker run -it -v $(pwd):/app イメージ名
```