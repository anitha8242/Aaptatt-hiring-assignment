FROM tomcat:8.5.99
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY  /var/lib/jenkins/workspace/pipe/target/sparkjava-hello-world-1.0.warr /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]

