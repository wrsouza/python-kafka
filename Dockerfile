FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install build-essential librdkafka-dev -y

WORKDIR /app
ENV PYTHONPATH /app

ADD requirements.txt /install/requirements.txt

RUN pip3 install -r /install/requirements.txt

EXPOSE 8000

# ENTRYPOINT ["/bin/bash", "-c", "while sleep 1000; do :; done"]
