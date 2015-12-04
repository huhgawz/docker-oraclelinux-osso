FROM oraclelinux-ohs

MAINTAINER Huhgawz <huhgawz@gmail.com>

USER oracle

RUN mkdir -p /oracle/www/default \
    && touch /oracle/www/default/index.html \
    && echo "<h1>Oracle Single Sign On was required to reach me</h1>" >> /oracle/www/default/index.html

COPY osso.conf /oracle/Middleware/Oracle_WT1/instances/instance1/config/OHS/ohs1
COPY mod-osso.conf /oracle/Middleware/Oracle_WT1/instances/instance1/config/OHS/ohs1/moduleconf/

WORKDIR /oracle/Middleware/Oracle_WT1/opmn/bin

ENTRYPOINT ["/bin/bash"]
