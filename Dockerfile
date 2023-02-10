FROM centos:7
RUN yum install java -y && mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz /opt/tomcat
RUN tar xvzf apache-tomcat-10.0.27.tar.gz
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-10.0.27/bin/catalina.sh","run"]



