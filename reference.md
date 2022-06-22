## Run

```
docker build -t serverless-python -f Dockerfile .

docker run -it -p 8080:5000 serverless-python

docker run --env PORT=5000 -it -p 8080:5000 serverless-python
```

## Push

### Via Docker

```
docker build -t serverless-python -f Dockerfile .

docker tag serverless-python gcr.io/mythical-plate-351820/serverless-python

docker push gcr.io/mythical-plate-351820/serverless-python
```

### Via GCloud Build

```
gcloud builds submit --tag gcr.io/mythical-plate-351820/serverless-python .
```

## Deploy

```
gcloud run deploy serverless-python --image gcr.io/mythical-plate-351820/serverless-python --platform managed --region us-west1
```

## Build and Deploy

```
gcloud builds submit --tag gcr.io/mythical-plate-351820/serverless-python:v1 .

gcloud run deploy serverless-python-v1 --image gcr.io/mythical-plate-351820/serverless-python:v1 --platform managed --region us-west1
```