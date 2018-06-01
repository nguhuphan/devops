## Generate a SSL certificate with the following commands:
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./roles/app.kubernetes/cert/tls.key -out ./roles/app.kubernetes/cert/tls.crt -subj "/CN=foo.bar.com"
### with foo.bar.com is your domain

## Store ssl certificate in a secret
kubectl create secret tls dmsecret --key ./roles/app.kubernetes/cert/tls.key --cert ./roles/app.kubernetes/cert/tls.crt