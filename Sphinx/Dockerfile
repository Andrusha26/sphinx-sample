FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get install -y wget curl mysql-client libmysqlclient-dev bc dos2unix 

WORKDIR /sphinx/

ADD run-indexer.sh ./run-indexer.sh
ADD run-searchd.sh ./run-searchd.sh
ADD entrypoint.sh ./entrypoint.sh

ADD sphinx.conf ./sphinx.conf

ADD seed.sql ./seed.sql
ADD seed.sh ./seed.sh

RUN wget -O sphinx.tar.gz http://sphinxsearch.com/files/sphinx-3.0.3-facc3fb-linux-amd64-glibc2.12.tar.gz && \
    tar -zxf sphinx.tar.gz && rm sphinx.tar.gz && \
    mv sphinx-3.0.3/bin/* /usr/bin/ && \
    rm -rf sphinx-3.0.3 && \
    mkdir /sphinx/data && mkdir /sphinx/binlog && mkdir /sphinx/logs && mkdir /sphinx/parsed_information && \
    chmod a+x *.sh

ENTRYPOINT [ "/sphinx/entrypoint.sh" ]