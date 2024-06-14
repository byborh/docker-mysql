# Utiliser l'image officielle de MySQL comme image de base
FROM mysql:latest

# Définir des variables d'environnement
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password

# Exposer le port 3306 pour MySQL
EXPOSE 3306
