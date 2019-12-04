FROM amazonlinux:2016.09

RUN yum install -y wget findutils

RUN wget https://s3-us-west-2.amazonaws.com/bonafide-infra.com/docker/jdk-7u79-linux-x64.rpm
RUN rpm -i jdk-7u79-linux-x64.rpm
RUN rm jdk-7u79-linux-x64.rpm

ENV JAVA_HOME=/usr/java/default/
ENV PATH=$PATH:$JAVA_HOME/bin

RUN wget http://apache.mesi.com.ar/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
RUN tar zxvf apache-maven-3.3.3-bin.tar.gz
RUN rm apache-maven-3.3.3-bin.tar.gz
ENV PATH $PATH:/apache-maven-3.3.9/bin
COPY deploy/settings.xml /apache-maven-3.3.9/conf/settings.xml

RUN wget https://archive.apache.org/dist/tomcat/tomcat-6/v8.5.3/bin/apache-tomcat-8.5.3.tar.gz
RUN tar zxvf apache-tomcat-8.5.3.tar.gz
RUN rm apache-tomcat-8.5.3.tar.gz
RUN mv apache-tomcat-8.5.3 /tomcat

