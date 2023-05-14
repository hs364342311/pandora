FROM python:3.7

MAINTAINER "huangshun <hs364342311@126.com>"

VOLUME /data
WORKDIR /opt/app
ADD . .
RUN pip install --upgrade pip && pip install Pandora_ChatGPT-1.0.11-py3-none-any.whl

ENTRYPOINT ["bin/startup.sh"]
