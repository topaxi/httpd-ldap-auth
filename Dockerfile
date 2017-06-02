FROM httpd:2.4

COPY bin/ /usr/bin/
COPY httpd.conf $HTTPD_PREFIX/conf/httpd.conf
RUN apt-get update && apt-get install libaprutil1-ldap && \
  chown www-data:www-data -R "$HTTPD_PREFIX" && \
  fix-permissions "$HTTPD_PREFIX"

USER www-data

EXPOSE 8080
