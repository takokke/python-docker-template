# Python3.8 Docker環境構築のテンプレート

イメージの作成
```shell
$ docker build -t fastapi-image:latest .
```

対話モードで、コンテナを起動
```shell
$ docker run -it --rm fastapi-image /bin/bash
```

ボリュームマウントでcurrent directryを同期
```shell
$ docker run -it --rm -v $(pwd):/app fastapi-image
```

```shell
$ docker run -it --rm -p 3000:8000 -v $(pwd):/app fastapi-image
```

# コンテナ内
仮想環境
```
. .venv/bin/activate
```

アプリの起動
```shell
$ uvicorn main:app --host 0.0.0.0 --reload
```