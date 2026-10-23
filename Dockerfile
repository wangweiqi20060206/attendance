FROM tomcat:9.0-jdk11-corretto-al2
WORKDIR /usr/local/tomcat
COPY attendance.war webapps/
COPY entrypoint.sh ./
RUN chmod +x entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["./entrypoint.sh"]
