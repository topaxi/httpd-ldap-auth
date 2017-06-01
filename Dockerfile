from httpd:2.4-alpine

COPY httpd.conf $HTTPD_PREFIX/conf/httpd.conf
RUN apk update && apk add apr-util-ldap && \
  chown www-data:www-data -R "$HTTPD_PREFIX"

USER www-data

EXPOSE 8080
