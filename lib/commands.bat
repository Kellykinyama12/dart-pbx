# Convert a crt certifcate to pem
openssl x509 -in mycert.crt -out mycert.pem -outform PEM