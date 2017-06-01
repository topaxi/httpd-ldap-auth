# httpd-ldap-auth

Apache reverse proxy with ldap basic auth

## Envs

```bash
PROXY_TO=http://example.com/
SERVER_ADMIN=you@example.ch
AUTH_NAME="LDAP Auth"
AUTH_LDAP_URL="ldaps://ldap.example.com/ou=users,dc=example"
AUTH_LDAP_BIND_DN="cn=reader,dc=example"
AUTH_LDAP_BIND_PASSWORD="supersecurepassword"
AUTH_LDAP_GROUP_ATTRIBUTE=memberUid
AUTH_LDAP_GROUP_ATTRIBUTE_IS_DN=on
LDAP_VERIFY_SERVER_CERT=On
```
