# PROJET POO

Projet poo perso - Mathilde ASSELIN

## Installation

Allez dans le dossier de votre projet. 
Et collez cette ligne dans votre terminal : 

```bash
git clone git@github.com:Mathilde-Asselin/Rendu-Poo-Perso.git
```

## Add Database

Allez dans Core/Config/config.php et inscrivez vos informations

```php
$dbConfig = [
    "host" => "localhost",
    "dbname" => "projetFilRouge",
    "user" => "root",
    "pass" => "root"
];
```

Allez dans phpmyadmin, cliquez sur importez et selectionnez le fichier sql qui se trouve à la racine du projet 

## Fonctionnement du site

Tout d'abord connectez vous avec vos identifiant, sinon vous n'aurez accès a aucune page

Vos identifiants sont les suivant:

```php
userInformation :

    "user" => " Alexandre.G "
    "password" => " password "
```

1) Accueil : Comme son nom l'indique voici la page d'acceuil de Könnun !
Si vous allez sur cette page, vous pourrez consulter les informations principales, les sondages de tout les utilisateurs, les sondages passés et les sondages en cours... Si vous cliquez sur les sondages en cours vous aurez la possibilité de commenter le sondage, et si vous cliquez sur les sondages passé, vous aurez la possibilité d'afficher les résultats ainsi que le chat.profil : Si vous allez sur la page profil, vous pourrez essayer de modifier vos informations de connexion ainsi que vous déconnecter !

2) Amis : Si vous allez sur la page amis vous pourrez voir vos amis, vous pourrez rechercher des utilisateurs, les ajouter en amis ainsi que les supprimer et vous pourrez également voir les sondages de vos amis ! 

Vous pouvez essayer ceci avec les pseudos suivant : 
```php
Pseudo :

    "pseudo1" => " Mathilde "
    "pseudo2" => " LouisPs "
    "pseudo3" => " PaulPs "

```

3) Crée un sondage : Si vous allez sur cette page vous pourrez crée un sondage en répondant aux données demander !

4) Profil : Si vous allez sur la page profil, vous pourrez essayer de modifier vos informations de connexion ainsi que vous déconnecter !

5) Résultat : Vous pourrez afficher les messages et les résultats du sondage une fois que vous y aurez répondu