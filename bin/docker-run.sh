containerName=dockerchatgpt #容器名称
imageRegistry=hschatgpt #镜像服务名
version=1.0.4 #镜像版本号
imageName=$imageRegistry:$version #镜像版本
STRING=`docker container ls -a |grep $containerName|wc -L`
if [ $STRING -gt 0 ]
then
 echo "container $containerName is exists"
 docker stop $containerName
 docker container rm $containerName
else
 echo "container $containerName is not exists"
fi
docker run -d -it --name $containerName -p 6100:6100 --privileged=true -e USER_CONFIG_DIR="/data" -e PANDORA_SERVER="0.0.0.0:6100" -v /data/soft/install-images/pandora_data:/data hschatgpt:1.0.4
