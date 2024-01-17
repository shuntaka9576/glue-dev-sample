# glue-dev-sample

* docker-compose
* LocalStack

を用いてローカルにAWS Glueの開発環境を作成するサンプルです。

詳細を会社のブログで紹介しています。
https://future-architect.github.io/articles/20220428a/


## メモ

glueコンテナ側
```bash
finch exec -it glue.dev bash
aws s3 mb s3://awsglue-datasets --endpoint-url http://s3.dev:4566
cd jupyter_workspace/
aws s3 cp persons.json s3://awsglue-datasets/examples/us-legislators/all/ --endpoint-url http://s3.dev:4566
pytest tests/
```
