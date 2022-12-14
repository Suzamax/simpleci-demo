FROM python:3-alpine

WORKDIR /usr/src/app

RUN apk add curl git bash jq
RUN pip install simple-cicd

ENTRYPOINT ["simpleci"]