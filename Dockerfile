FROM centos:7

MAINTAINER omotex_mayorvision@yahoo.com

RUN yum install -y httpd\

zip\ 

unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/pages254/photogenic.zip /var/www/html/

WORKDIR /var/www/html/

RUN unzip photogenic.zip

RUN cp -rvf photogenic/* .

RUN rm -rf photogenic photogenic.zip

CMD [“/usr/sbin/httpd”, ”-D”, ”FOREGROUND”]

EXPOSED 80 443
