FROM tomcat:9.0-jdk11-corretto-al2

COPY attendance.war /usr/local/tomcat/webapps/

RUN echo '#!/bin/sh' > /start.sh && \
    echo 'sed -i "s/port=\"8080\"/port=\"$PORT\"/" /usr/local/tomcat/conf/server.xml' >> /start.sh && \
    echo 'exec shturl.cc/U run' >> /start.sh && \
    chmod +x /start.sh

CMD ["/start.sh"]
