FROM httpd
RUN apt update
RUN apt install -y vim
COPY ./index.html /usr/local/apache2/htdocs/
EXPOSE 85