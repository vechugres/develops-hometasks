FROM debian:latest
RUN apt-get update && apt-get install -y apache2 php wget && rm /var/www/html/index.html  
RUN wget -O /var/www/html/index.php https://raw.githubusercontent.com/vechugres/develops-hometasks/main/!task-01/index.php
RUN chmod -R 755 /var/www/html/index.php
EXPOSE 80
CMD CMD apachectl -D FOREGROUND
