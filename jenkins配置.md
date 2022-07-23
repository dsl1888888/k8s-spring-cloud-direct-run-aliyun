# javaBuild

````
echo "代码编译完了,拷贝包"

cp /root/.jenkins/workspace/javaBuild/app01/target/app01.jar /root/
cp /root/.jenkins/workspace/javaBuild/demo-springcloud-zuul/target/demo-springcloud-zuul-0.0.1-SNAPSHOT.jar /root/
cp /root/.jenkins/workspace/javaBuild/app02/target/app02.jar /root/
cp /root/.jenkins/workspace/javaBuild/eureka-server/target/eureka-server.jar /root/

````

# k8s02
````
echo "构建完了"

docker -v

docker-compose --version

ls

echo ${workspace}

docker login --username=dsl1888888@163.com  --password=123456Aa!  registry.cn-hongkong.aliyuncs.com

docker ps

ls
````

# sh 07-imageBuild-aliyun.sh

````

k8s02-restart
echo "构建完了"

docker -v

docker-compose --version

echo ${workspace}

docker ps
ls

sh 09-k8s-delete-aliyun.sh

sleep 20

sh 08-k8s-start-aliyun.sh


````