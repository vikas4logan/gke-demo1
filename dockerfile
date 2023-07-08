FROM centos:7
RUN yum install java-11-openjdk devel -y && mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.9/bin/apache-tomcat-10.1.9.tar.gz /opt/tomcat
RUN tar xvzf apache-tomcat-10.1.9.tar.gz
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-10.1.9/bin/catalina.sh","run"]



