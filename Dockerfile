FROM tomcat:9.0-jdk11-corretto-al2

COPY attendance.war /usr/local/tomcat/webapps/

# 用 tomcat 的环境变量 CATALINA_OPTS 来修改监听端口
ENV CATALINA_OPTS="-Dhttp.port=${PORT}"
