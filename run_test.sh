#!/bin/bash
finch compose exec -T -u glue_user -w /home/glue_user/workspace/jupyter_workspace glue.dev.summary aws s3 mb s3://awsglue-datasets --endpoint-url http://glue.dev.s3.local:4566
finch compose exec -T -u glue_user -w /home/glue_user/workspace/jupyter_workspace glue.dev.summary aws s3 cp ./persons.json s3://awsglue-datasets/examples/us-legislators/all/ --endpoint-url http://glue.dev.s3.local:4566
finch compose exec -T -u glue_user -w /home/glue_user/workspace/jupyter_workspace glue.dev.summary /home/glue_user/.local/bin/pytest $1
