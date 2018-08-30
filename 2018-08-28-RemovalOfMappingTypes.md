## 용어 정리

mapping types 용어가 혼란을 가져왔기 때문에,
mapping types은 document type으로 설명한다.
field별 type은 datatype으로 생각한다.

## 하나의 index에 하나의 document type만 되도록 바뀐 이유
 
관계형 데이터베이스에서는 Table별 칼럼은 독립적이다.
Table A에 name column이 있고, Table B에 name column이 있으면 두개는 독립적이다.
하지만 일라스틱서치의 index는 다르게 작동한다.
하나의 Index에 Document type A가 있고 Document type B가 있다.
그리고 Document type A에 name이라는 field가 있고, Document type B에 name이라는 field가 있다고 하면,
일라스틱 내부적으로 하나의 같은 field로 관리가 된다.

이렇게 일라스틱 내부적으로 하나의 같은 field로 관리되기 때문에,
Document type A에서 name field를 string type으로 하고, Document type B에서 name field를 boolean type으로 할 수가 없다.
왜냐하면 내부적으로 같은 하나의 field로 관리 되기 때문이다.

그리고 이렇게 하나의 index에 document type A가 있고, document type B가 있으면,
서로 공통적인 field들이 있을 수도 있지만, 대부분 다른 필드들이 document type별로 있기 때문에,
data들을 효율적으로 압축해서 관리하기가 불리하게 된다.

그래서 6.x에서는 하나의 index에 하나의 document type을 가지게 되었고, 7.x부터는 document type이 없어질 예정이다.

참고자료 : [elasticsearch document](https://www.elastic.co/guide/en/elasticsearch/reference/6.4/removal-of-types.html)
