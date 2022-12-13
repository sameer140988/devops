FROM centos:latest
MAINTAINER sambirajdar88@gmail.com
RUN yum install –y httpd \
  Zip \
 Unzip 
ADD https: //www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip kindle.zip
RUNcp –rvf markups-kindle/*
RUN rm –rf  _MACOSX markups-kindle kindle.zip
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
