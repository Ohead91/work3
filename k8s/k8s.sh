deployname = $1

if [ ${deployname} -eq 0]; then
    echo 'input deploy name'
    exit
fi

# pull image
docker pull oheadlee/work3

# kube run
winpty kubectl run $1 --image=oheadlee/work3 --port=80

# kube expose
kubectl expose deployment/$1 --type="NodePort" --port 80

# set pod
kubectl scale deployment $1 --replicas=20
kubectl.exe get pod -o wide | grep $1