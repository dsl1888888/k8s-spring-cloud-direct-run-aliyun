
#起跑服务(有顺序的,先中心,再启动其他;你的文件放在哪里,你就指定你的路径).
echo "起跑服务(有顺序的,先中心,再启动其他)."

kubectl apply -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-eureka/k8s-eureka-server.yaml
kubectl apply -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app01/k8s-app01.yaml
kubectl apply -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app02/k8s-app02.yaml
kubectl apply -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-zuul/k8s-api-gateway.yaml

