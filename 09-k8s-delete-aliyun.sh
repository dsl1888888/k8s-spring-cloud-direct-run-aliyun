
#删除服务..
echo "删除服务."

kubectl delete -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-eureka/k8s-eureka-server.yaml
kubectl delete -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app01/k8s-app01.yaml
kubectl delete -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-app02/k8s-app02.yaml
kubectl delete -f /opt/k8s-spring-cloud-direct-run-aliyun/docker-k8s-zuul/k8s-api-gateway.yaml
