FROM docker.io/centos:latest
MAINTAINER medivh xiajieok@gmail.com

RUN yum -y update; yum clean all  
RUN yum -y install epel-release; yum clean all  
RUN yum -y install redis; yum clean all  
  
EXPOSE 6379  