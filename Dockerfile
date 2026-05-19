FROM  docker.io/library/httpd:alpine3.18
ENV APP_NAME=sales_app APP_VERSION=v1.0.0 APP_TITLE=senior
ENV DEVOPS=GR11
LABEL test image
COPY . /usr/local/apache2/htdocs

