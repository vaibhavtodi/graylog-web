#!/bin/sh
exec 2>&1

export JAVA=/usr/lib/jvm/java-7-oracle
export JAVA_HOME=/usr/bin/java

# Starting the  Graylog-web Interface Service
exec   /usr/share/graylog-web/bin/graylog-web-interface -Dconfig.file=/etc/graylog/web/web.conf -Dhttp.port=9000 -Dhttp.address=0.0.0.0 -Dpidfile.path=/dev/null -Dlogger.file=/etc/graylog/web/logback.xml
