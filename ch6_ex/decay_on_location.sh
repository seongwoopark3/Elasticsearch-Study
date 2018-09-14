curl -X POST localhost:9200/ch6-ex/_doc/_search?pretty -H 'Content-type:application/json' \
        -d '{"query":{"function_score":{"query":{"match_all":{}},"functions":[{"gauss":{"location":{"origin":"37.45,126.7","offset":"0m","scale":"100km","decay":0.5}}}]}}}'
