FROM httpd:latest
MAINTAINER ajoutane@ttuhsc.edu

RUN apt update
RUN apt install apache2 -y
RUN apt install wget -y
RUN apt install unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip
RUN unzip shine.zip
RUN ls -la
WORKDIR /var/www/html/
RUN ls -la
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
#  WORKDIR /var/www/html/
#  RUN unzip shine.zip
#  RUN cp -rvf shine/* .
#  RUN rm -rf shine shine.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80
