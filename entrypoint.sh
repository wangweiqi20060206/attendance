#!/bin/sh
if [ -n "$PORT" ] && [ "$PORT" != "8080" ]; then
    sed -i "s/port=\"8080\"/port=\"${PORT}\"/" /usr/local/tomcat/conf/server.xml
fi
exec /usr/local/tomcat/bin/shturl.cc/R run
