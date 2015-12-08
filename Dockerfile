FROM oraclelinux-ohs

MAINTAINER Huhgawz <huhgawz@gmail.com>

USER oracle

RUN mkdir -p /oracle/www/osso \
    && echo "<h1>Test page for Oracle Single Sign On</h1>" >> /oracle/www/osso/index.html

COPY osso.conf /oracle/Middleware/Oracle_WT1/instances/instance1/config/OHS/ohs1
COPY mod-osso.conf /oracle/Middleware/Oracle_WT1/instances/instance1/config/OHS/ohs1/moduleconf

WORKDIR /oracle/Middleware/Oracle_WT1/opmn/bin

ENTRYPOINT ["/bin/bash"]
