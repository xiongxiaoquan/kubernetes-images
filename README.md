### 使用dockerhub+github自动拉取谷歌kubernetes镜像
google镜像仓库：https://console.cloud.google.com/gcr/images/google-containers/GLOBAL

个人dockerhub仓库：https://hub.docker.com/u/willdockerhub/

### 手动拉取镜像：
```shell
docker pull gcr.io/google-containers/kube-proxy-amd64:v1.13.0
docker pull gcr.io/google-containers/kube-controller-manager-amd64:v1.13.0
docker pull gcr.io/google-containers/kube-scheduler-amd64:v1.13.0
docker pull gcr.io/google-containers/kube-apiserver-amd64:v1.13.0
docker pull gcr.io/google-containers/pause-amd64:3.1
docker pull gcr.io/google-containers/coredns:1.2.6
docker pull gcr.io/google-containers/etcd-amd64:3.2.24
docker pull gcr.io/google-containers/kubernetes-dashboard-amd64:v1.10.0
docker pull quay.io/coreos/flannel:v0.10.0-amd64
```
