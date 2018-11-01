#!/bin/bash
# See: https://www.elastic.co/guide/en/elasticsearch/reference/current/rpm.html

sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

sudo touch /etc/yum.repos.d/elasticsearch.repo
sudo curl https://raw.githubusercontent.com/dunstontc/hoist/master/src/OS/redhat/elasticsearch.repo > /etc/yum.repos.d/elasticsearch.repo

sudo yum install elasticsearch

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service

sudo systemctl start elasticsearch.service

# curl -X GET "localhost:9200/"
