### Run
Open terminal and move directory
$ cd docker_compose_es_kibana

Run following command,
$ docker-compose -f docker-compose.yml up -d

And then, enjoy local es
$ curl -k -X GET http://localhost:9200/_cat/indices\?v

and visit local kibana
http://localhost:5601
