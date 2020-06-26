# Kubernete Deploy
## 1. 이미지는 문제2번으로 만든 이미지 사용.
```
docker pull oheadlee/work3
```

## 2. Pod는 20개 사용
```
kubectl scale deployment $1 --replicas=20 // 입력받은 이름($1)의 pod 20개 설정
kubectl.exe get pod -o wide | grep $1 // 입력받은 이름의 pod 개수 확인

```
## 3. Service port는 80번
```
winpty kubectl run $1 --image=oheadlee/work3 --port=80 // 입력받은 이름으로 port 80 지정
```

# k8s.sh 실행 
```
$ ./k8s.sh ohead
./k8s.sh: line 1: deployname: command not found
Using default tag: latest
latest: Pulling from oheadlee/work3
Digest: sha256:55e246c77bbbaa762b5235b9e2ca95dda80e3fe8efc5db89cabd5876df0c6ffd
Status: Image is up to date for oheadlee/work3:latest
docker.io/oheadlee/work3:latest
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/ohead created
deployment.extensions/ohead scaled
ohead-847d577f86-2fvn6      0/1     Pending             0          0s      <none>      <none>           <none>           <none>
ohead-847d577f86-4wf2t      0/1     Pending             0          0s      <none>      <none>           <none>           <none>
ohead-847d577f86-6h48g      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-7bkc8      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-8lgr2      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-9p65h      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-b59h7      0/1     ContainerCreating   0          1s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-b748k      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-dwf2s      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-fffnw      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-hxf4m      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-k5dps      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-kmgjv      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-l9422      0/1     ContainerCreating   0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-l9zrz      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-mpd5x      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-mxv69      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-vcn9v      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-vv2xg      0/1     Pending             0          0s      <none>      docker-desktop   <none>           <none>
ohead-847d577f86-w79nr      0/1     Pending             0          0s      <none>      <none>           <none>           <none>
```