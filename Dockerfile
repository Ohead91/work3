from ubuntu
run apt update
run apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
