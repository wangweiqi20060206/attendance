FROM tomcat:9.0-jdk11-corretto-al2
COPY attendance.war /usr/local/tomcat/webapps/
CMD ["shturl.cc/v", "run"]
