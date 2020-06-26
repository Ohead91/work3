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