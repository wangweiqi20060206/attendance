#!/bin/bash

if [ -n "$PORT" ] && [ "$PORT" != "8080" ]; then
    echo "==> Setting Tomcat port to $PORT"
    sed -i "s/port=\"8080\"/port=\"$PORT\"/g" "$CATALINA_HOME/conf/server.xml"
    sed -i "s/port=\"8005\"/port=\"-1\"/g" "$CATALINA_HOME/conf/server.xml"
fi

exec "$CATALINA_HOME/bin/catalina.sh" run
