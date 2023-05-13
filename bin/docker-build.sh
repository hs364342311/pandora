#!/bin/bash
## 将工程打包成whl包
cd ..
pip install wheel && python setup.py bdist_wheel
## 打包镜像
mv -f ./dist/Pandora_ChatGPT-1.0.4-py3-none-any.whl ./docker
cp -f ./bin/startup.sh ./docker/bin
cd ./docker
docker build -t Pandora_ChatGPT:1.0.4 .
