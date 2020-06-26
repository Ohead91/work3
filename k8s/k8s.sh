deployname = $1

# pull image
docker pull oheadlee/work3

# kube run
winpty kubectl run $1 --image=oheadlee/work3 --port=80

# set pod
kubectl scale deployment $1 --replicas=20
kubectl.exe get pod -o wide | grep $1