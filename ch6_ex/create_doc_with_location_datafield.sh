curl -X PUT 127.0.0.1:9200/ch6-ex/?pretty -H 'Content-Type:application/json' \
        -d '{"mappings":{"_doc":{"properties":{"location":{"type":"geo_point"}}}}}'

curl -X PUT 127.0.0.1:9200/ch6-ex/_doc/1?pretty -H 'Content-Type:application/json' \
        -d '{"text":"Seoul","location":{"lat":37.715133,"lon":127.269311}}'

curl -X PUT 127.0.0.1:9200/ch6-ex/_doc/2?pretty -H 'Content-Type:application/json' \
        -d '{"text":"Busan","location":{"lat":35.17944,"lon":129.07556}}'

curl -X PUT 127.0.0.1:9200/ch6-ex/_doc/3?pretty -H 'Content-Type:application/json' \
        -d '{"text":"Incheon","location":{"lat":37.45639,"lon":126.70528}}'

curl -X PUT 127.0.0.1:9200/ch6-ex/_doc/4?pretty -H 'Content-Type:application/json' \
        -d '{"text":"Ulsan","location":{"lat":35.53889,"lon":129.31667}}'
