docker run -d --name mynginx -p 80:80 nginx
docker run -d --name myweb -p 8080:80 httpd
docker run -d --name mysqldb -p 3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
docker ps
docker container logs CONTAINER_ID
docker container stop CONTAINER_ID
docker container ls
docker container ls -a
docker container rm CONTAINER_ID
docker container ls -1

