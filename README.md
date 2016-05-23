# Docker-App
Docker Database Driven Web-App (Apache,Mariadb,Wordpress)

Created Docker files for Apache, Database and Wordpress which serves basic installation of all the packages related to them.

#Apache
After installing SSL you can create a self signed certificate using following command :
open ssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt

When the certificate gets generated enter all the details and edit httpd.conf file and add as follows :-
<VirtualHost *:443>
SSLEngine On
SSLCertificateFile /etc/ssl/certs/server.crt
SSLCertificateKeyFile /etc/ssl/certs/server.key
DocumentRoot /var/www/html/
</VirtualHost>

Also add Wordpress Project Dir to /var/www/html and edit httpd.conf

