FROM python:3.11.5-alpine

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN apk update && apk upgrade && apk add --no-cache ffmpeg

CMD [ "python", "./src/index.py" ]