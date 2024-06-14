# Outil de Création et de Configuration de Base de Données MySQL

Cet outil Docker vous permet de créer et de configurer rapidement une base de données MySQL. Il est idéal pour les environnements de développement ou pour mettre en place une base de données MySQL en cas de besoin.

## Prérequis

- Docker installé sur votre machine. [Télécharger Docker](https://www.docker.com/get-started)

## Installation

1. Clonez ce dépôt sur votre machine locale :

    ```sh
    git clone https://github.com/votre-utilisateur/outil-mysql-docker.git
    cd outil-mysql-docker
    ```

2. Construisez l'image Docker :

    ```sh
    docker build -t my_mysql_image .
    ```

3. Exécutez un conteneur à partir de l'image :

    ```sh
    docker run --name my_mysql_container -d -p 3306:3306 my_mysql_image
    ```

## Configuration

Les identifiants de connexion et les paramètres de la base de données peuvent être configurés via des variables d'environnement dans le `Dockerfile`. Par défaut, les paramètres suivants sont utilisés :

- **Utilisateur root**
  - **Nom d'utilisateur**: `root`
  - **Mot de passe**: `root_password`
- **Utilisateur personnalisé**
  - **Nom d'utilisateur**: `my_user`
  - **Mot de passe**: `my_password`
  - **Base de données**: `my_database`

## Utilisation

Pour se connecter à la base de données MySQL depuis l'hôte, utilisez le client MySQL avec les informations de connexion suivantes :

```sh
mysql -h 127.0.0.1 -P 3306 -u my_user -pmy_password
