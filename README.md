### Dockerhub+Github拉取谷歌kubernetes镜像

dockerhub仓库：https://hub.docker.com/u/willdockerhub/

github构建仓库：https://github.com/zhwill/k8s-images

google镜像仓库：https://console.cloud.google.com/gcr/images/google-containers/GLOBAL

helm镜像仓库:https://console.cloud.google.com/gcr/images/kubernetes-helm/GLOBAL

### 使用方法：
```shell
## 拉取images
docker pull willdockerhub/kube-apiserver-amd64:v1.13.0

## 修改tag
docker tag willdockerhub/kube-apiserver-amd64:v1.13.0 k8s.gcr.io/kube-apiserver-amd64:v1.13.0

## 删除原镜像
docker rmi willdockerhub/kube-apiserver-amd64:v1.13.0
```

### 或者参考:
https://blog.csdn.net/networken/article/details/84571373
