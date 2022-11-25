#Dockerfile for C-langaugeapp

FROM ubuntu

WORKDIR /opt/facebooc

COPY . .

RUN apt-get update && \
    apt-get install -yq build-essential make libsqlite3-dev sqlite3

RUN make all

EXPOSE 16001

CMD bin/facebooc
