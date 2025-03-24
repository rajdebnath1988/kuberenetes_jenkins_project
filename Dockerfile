FROM centos:7
MAINTAINER raj.debnath1988@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/free-css-templates/download/page25/photogenic.zip /var/www/html/
https://www.free-css.com/free-css-templates
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
