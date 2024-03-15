FROM tomcat:8.5.99
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY  /workspace/target/sparkjava-hello-world-1.0.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]

