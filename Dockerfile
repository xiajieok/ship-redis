FROM docker.io/centos:latest
MAINTAINER medivh xiajieok@gmail.com

RUN yum -y update; yum clean all  
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
RUN yum -y install redis
  
EXPOSE 6379  

ENTRYPOINT ["redis-server"]  
CMD ["/etc/redis.conf", "--bind", "0.0.0.0"] 