#!/usr/bin/env bash
# 停止并删除原有容器与镜像
docker stop dianping
docker rm dianping
docker rmi dianping:latest

# 打包应用
mvn package -Dmaven.test.skip=true
# 打包新镜像
docker build -t dianping:latest .
# 运行镜像
docker run --name dianping -d -p 8080:8080 dianping:latest

