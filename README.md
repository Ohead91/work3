# work3

## 1. github Repository 만들기
https://github.com/Ohead91/work3

## 2. clone
```
$ git clone https://github.com/Ohead91/work3.git
Cloning into 'work3'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
```
## 3. build script 만들기
```
$ cat Dockerfile
from ubuntu
run apt update
run apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
```
## 4. test(build도 해보고, run해보고,nginx서버가 잘 작동하는지 확인할 것)

### build
```
$ winpty docker build --tag oheadlee/work3 .
Sending build context to Docker daemon  56.32kB
Step 1/4 : from ubuntu
 ---> 74435f89ab78
Step 2/4 : run apt update
 ---> Using cache
 ---> ed0be065b133
Step 3/4 : run apt install -y nginx
 ---> Running in ee41345a8def
 ```
 ### run
 
 ### nginx 확인

## 5. 간단한 설명, 사용예와 그 결과를 README.md에 넣으시오.


## 6. add,commit,push
