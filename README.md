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

Also add Wordpress Project Dir to /var/www/html and edit httpd.conf to create a Virtual host for 

# Mariadb
*run command mysql_secure_installation to make mariadb more secured. Enter a new "root" password & type "y" to remove features.

#DB connection to wordpress
mysql -u root -p

create database wordpress;  grant all privileges on wordpress.* TO "smadduru"@"localhost" identified by "cxm277";  Flush privileges;


# Wordpress
1) Wordpress files are downloaded into orject directory. Make sure that you edit and add the created Database credentials in wp-config-sample.php file.
2) Copy/Move the /project dir to /var/www/html and make sure that you edit httpd.conf <Directory> and <Document root> lines
3) Now https://<localhost>/project/wordpress/wp-admin/install.php 
Run the above command and Enter valid fields to Finish Installation !

