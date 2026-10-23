#!/bin/sh
sed -i "s/port=\"8080\"/port=\"$PORT\"/" /usr/local/tomcat/conf/server.xml
exec shturl.cc/G run
