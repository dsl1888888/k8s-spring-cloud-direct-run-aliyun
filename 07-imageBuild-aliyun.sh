
docker login --username=dsl1888888@163.com  --password=123456Aa!  registry.cn-hongkong.aliyuncs.com


sleep 10


#打包docker镜像 (如果你的镜像仓库中心不是这个,需要修改)
echo "打包docker镜像"


########################
cd /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-eureka/
rm -rf /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-eureka/eureka-server.jar 

cp /root/eureka-server.jar .

docker build -f Dockerfile -t codingsoldier/eureka:latest .
docker tag  codingsoldier/eureka:latest registry.cn-hongkong.aliyuncs.com/ggwhy/eureka:latest
docker push registry.cn-hongkong.aliyuncs.com/ggwhy/eureka:latest

########################
cd /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app01
rm -rf /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app01/app01.jar
cp /root/app01.jar .

docker build -f Dockerfile -t codingsoldier/app001:latest .
docker tag  codingsoldier/app001:latest registry.cn-hongkong.aliyuncs.com/ggwhy/app001:latest
docker push registry.cn-hongkong.aliyuncs.com/ggwhy/app001:latest

########################
cd /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app02
rm -rf /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app02/app02.jar
cp /root/app02.jar .

docker build -f Dockerfile -t codingsoldier/app002:latest .
docker tag  codingsoldier/app002:latest registry.cn-hongkong.aliyuncs.com/ggwhy/app002:latest
docker push registry.cn-hongkong.aliyuncs.com/ggwhy/app002:latest



########################
cd /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-zuul/
rm -rf /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-zuul/demo-springcloud-zuul-0.0.1-SNAPSHOT.jar 

cp /root/demo-springcloud-zuul-0.0.1-SNAPSHOT.jar . 

docker build -f Dockerfile -t codingsoldier/zuul:latest .
docker tag  codingsoldier/zuul:latest registry.cn-hongkong.aliyuncs.com/ggwhy/zuul:latest
docker push registry.cn-hongkong.aliyuncs.com/ggwhy/zuul:latest

