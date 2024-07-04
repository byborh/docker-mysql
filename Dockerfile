FROM php:7.4-apache

# Installer le client MySQL
RUN apt-get update && apt-get install -y default-mysql-client

# Copier les fichiers du projet dans le répertoire par défaut d'Apache
COPY ./html /var/www/html

# Exposer le port 80
EXPOSE 80

# Activer les modules Apache nécessaires
RUN a2enmod rewrite
