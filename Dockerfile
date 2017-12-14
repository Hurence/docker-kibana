FROM docker.elastic.co/kibana/kibana:6.1.0
MAINTAINER Hurence

USER root

ENTRYPOINT runuser -l kibana -c '/usr/local/bin/kibana-docker'
