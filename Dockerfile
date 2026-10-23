FROM tomcat:9.0-jdk11-corretto-al2
COPY attendance.war /usr/local/tomcat/webapps/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
