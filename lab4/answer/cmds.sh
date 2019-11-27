docker network create mynetwork
docker run -d --name elastic1 --net mynetwork --net-alias search elasticsearch:2
docker run -d --name elastic2 --net mynetwork --net-alias search elasticsearch:2
docker run --net mynetwork alpine nslookup search
docker run --net mynetwork centos curl -s search:9200 
