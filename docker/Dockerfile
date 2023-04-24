FROM python:3.7-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

VOLUME /data
WORKDIR /opt/app
ADD . .
RUN pip install --upgrade pip && pip install Pandora_ChatGPT-1.0.4-py3-none-any.whl

ENTRYPOINT ["bin/startup.sh"]
