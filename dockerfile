FROM centos
MAINTAINER lalit
RUN yum install git -y
RUN yum install java -y
RUN yum install wget -y
RUN git config --global user.name "lalitmohan55"
RUN git config --global user.email "tech.lalit55@gmail.com"
RUN cd /opt && git clone https://github.com/lalitmohan55/lti-git.git
RUN mkdir /opt/dummy
RUN cd /opt/dummy && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz
RUN cd /opt/dummy && tar -xvf apache-tomcat-9.0.56.tar.gz
