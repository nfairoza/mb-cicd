FROM 239144702963.dkr.ecr.us-east-2.amazonaws.com/octank-cicd 
#RUN apt update -y && apt upgrade -y
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/drupalsite
RUN ls ../
COPY drupalsite /var/www/html/drupalsite
RUN chmod +x /var/www/html/drupalsite
RUN /etc/init.d/apache2 reload
EXPOSE 80
