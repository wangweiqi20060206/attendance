FROM tomcat:9.0-jdk11-corretto-al2

COPY attendance.war /usr/local/tomcat/webapps/
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
