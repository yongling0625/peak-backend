git pull

if docker ps -a|grep -i gy-backend;then
   echo '删除旧容器'
   docker stop gy-backend
   docker rm -f gy-backend
fi

if docker images|grep cn.gy-peak/peak-backend;then
   echo '删除旧镜像'
   docker rmi cn.gy-peak/peak-backend:1.0
fi

echo '构建新镜像'
./gradlew clean build buildDocker

echo '构建新容器'
docker run -d -p 8080:8080 -m 500m -e 'spring.profiles.active=prod' --restart=always --name gy-backend  cn.gy-peak/peak-backend:1.0