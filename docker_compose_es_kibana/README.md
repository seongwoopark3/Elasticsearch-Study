### Run
Open terminal and run following command,
$ docker-compose -f local_elasticsearch_kibana/docker-compose.yml up -d

And then, enjoy local es
$ curl -k -X GET http://localhost:9200/_cat/indices\?v

and visit local kibana
http://localhost:5601
