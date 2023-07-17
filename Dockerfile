# Use the CentOS base image
FROM centos:latest

# Install necessary packages (in this case, nginx)
RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y nginx && \
    yum clean all

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Start the nginx service when the container runs
CMD ["nginx", "-g", "daemon off;"]


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
