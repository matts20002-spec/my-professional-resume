FROM httpd
RUN apt update
RUN apt install -y vim
COPY ./index.html /usr/local/apache2/htdocs/
RUN sed -i 's/Listen 80/Listen 85/' /usr/local/apache2/conf/httpd.conf
EXPOSE 85
