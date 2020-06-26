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
 ```
$ winpty docker run -it --name u1 -v C:\\Users\\user\\work3:/work3 ubuntu
root@16ac6253285f:/# apt install
Reading package lists... Done
Building dependency tree
Reading state information... Done
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
root@16ac6253285f:/# apt install nginx
Reading package lists... Done

 ```
 ### nginx 확인
 #### nginx 설치
```
root@4947c063aa53:/# apt update
Get:1 http://security.ubuntu.com/ubuntu focal-security InRelease [107 kB]
Get:2 http://archive.ubuntu.com/ubuntu focal InRelease [265 kB]
Get:3 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [42.3 kB]
Get:4 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [1077 B]
Get:5 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [147 kB]
Get:6 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [30.9 kB]
Get:7 http://archive.ubuntu.com/ubuntu focal-updates InRelease [107 kB]
Get:8 http://archive.ubuntu.com/ubuntu focal-backports InRelease [98.3 kB]
Get:9 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages [1275 kB]
Get:10 http://archive.ubuntu.com/ubuntu focal/restricted amd64 Packages [33.4 kB]
Get:11 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [11.3 MB]
Get:12 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [177 kB]
Get:13 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [31.0 kB]
Get:14 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [143 kB]
Get:15 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [1077 B]
Get:16 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [270 kB]
Get:17 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [2900 B]
Fetched 14.1 MB in 1min 6s (214 kB/s)
Reading package lists... Done
Building dependency tree
Reading state information... Done
All packages are up to date.
```
```
root@4947c063aa53:/# apt install nginx
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
```
#### nginx 버전확인
```
root@4947c063aa53:/# nginx -v
nginx version: nginx/1.17.10 (Ubuntu)
```

#### nginx 실행확인
```
root@16ac6253285f:/#  ps -ef | grep nginx
root      1016     1  0 16:32 ?        00:00:00 nginx: master process nginx
www-data  1017  1016  0 16:32 ?        00:00:00 nginx: worker process
www-data  1018  1016  0 16:32 ?        00:00:00 nginx: worker process
root      1023     1  0 16:33 pts/0    00:00:00 grep --color=auto nginx
```



## 5. 간단한 설명, 사용예와 그 결과를 README.md에 넣으시오.


## 6. add,commit,push
