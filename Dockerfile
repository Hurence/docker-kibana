# -oss version does not includes X-Pack and we do not want authentication
FROM docker.elastic.co/kibana/kibana:5.4.3
MAINTAINER Hurence

# uninstall plugins RUN bin/kibana-plugin remove x-pack
RUN bin/kibana-plugin remove x-pack

ADD kibana.yml /usr/share/kibana/config/
USER root
RUN chown kibana:kibana config/kibana.yml

# 
#COPY dashboards/ApacheWeblogsDashboard.json
#RUN

ENTRYPOINT runuser -l kibana -c '/usr/local/bin/kibana-docker'
