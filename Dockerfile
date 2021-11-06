FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.2

COPY ./elasticsearch.yml /usr/share/elasticsearch/config/

COPY ./synonyms/ /usr/share/elasticsearch/config/analysis/

ENV ES_JAVA_OPTS="-Xms128m -Xmx128m"

ENV ELASTICSEARCH_USERNAME=${ES_USERNAME}
ENV ELASTIC_PASSWORD=${ES_PASSWORD}
