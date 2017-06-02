FROM httpd:2.4

COPY bin/ /usr/bin/
COPY httpd.conf $HTTPD_PREFIX/conf/httpd.conf
RUN mkdir -p /etc/ssl/certs && \
  touch /etc/ssl/certs/cacert.pem && \
  chown www-data:www-data -R "$HTTPD_PREFIX" && \
  fix-permissions "$HTTPD_PREFIX"

ENV LDAP_VERIFY_SERVER_CERT=on \
  LDAP_TRUSTED_GLOBAL_CERT_PATH=/etc/ssl/certs/cacert.pem \
  LDAP_TRUSTED_GLOBAL_CERT_TYPE=CA_BASE64 \
  AUTH_NAME="LDAP Auth" \
  AUTH_LDAP_GROUP_ATTRIBUTE=memberUid \
  AUTH_LDAP_GROUP_ATTRIBUTE_IS_DN=on \
  LOG_LEVEL=warn

USER www-data

EXPOSE 8080
