docker run -d -v psql-data:/var/lib/postgresql/data  postgres:9.6.15
docker volume ls
docker container ls
docker container logs CONTAINER_ID
docker kill CONTAINER_ID
docker run -d -v psql-data:/var/lib/postgresql/data postgres:9.6.16

