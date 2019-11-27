sysctl -w vm.max_map_count=262144
docker run -d --name esearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.4.2
docker run -d --link esearch:elasticsearch -p 5601:5601 docker.elastic.co/kibana/kibana:7.4.2
docker run -d docker.elastic.co/beats/filebeat:7.4.2 setup -E setup.kibana.host=YOUR_HOST_IP:5601 -E output.elasticsearch.hosts=["YOUR_HOST_IP:9200"]
curl -L -O https://raw.githubusercontent.com/elastic/beats/7.4/deploy/docker/filebeat.docker.yml
docker run -d \
--name=filebeat \
--user=root \
--volume="$(pwd)/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro" \ 
--volume="/var/lib/docker/containers:/var/lib/docker/containers:ro" \
--volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
docker.elastic.co/beats/filebeat:7.4.2 filebeat -e -strict.perms=false \
-E output.elasticsearch.hosts=["YOUR_LINUXHOST_IP:9200"]

