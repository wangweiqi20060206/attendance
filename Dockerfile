FROM tomcat:9.0-jdk11-corretto-al2
COPY attendance.war /usr/local/tomcat/webapps/
CMD sh -c "sed -i 's/port=\"8080\"/port=\"${PORT}\"/' /usr/local/tomcat/conf/server.xml && /usr/local/tomcat/bin/shturl.cc/S run"
