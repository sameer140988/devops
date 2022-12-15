FROM centos
MAINTAINER sambirajdar88@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/branding.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip branding.zip
RUN cp -rvf branding/* .
RUN rm -rf branding branding.zip
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
