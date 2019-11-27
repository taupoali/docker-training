docker run -it alpine
apk add figlet
exit
docker image inspect alpine:latest
docker container ls -a
docker container commit CONTAINER_ID IMAGE
docker image inspect alpine:updated
docker history alpine:updated
docker container run alpine:updated figlet hello world


