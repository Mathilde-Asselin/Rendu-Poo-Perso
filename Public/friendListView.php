<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Friendslist</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/friend.css">
</head>

<body>

    <?php 
        include 'header.php';
    ?>

    <section class="TitreRouge">
        
    <?php
        use App\FriendList;
        use App\IndexTest;

        require "../Autoloader.php";
        Autoloader::register();

        $friendList = new FriendList();
        $sondageEnCours = new IndexTest();
        $listeSondageFini = $sondageEnCours->getSondageFinis($_SESSION['user_id']);


        if (isset($_GET['delete'])) {
            $friendList->deleteFriend($_GET['delete']);
        }

        if (isset($_GET['submit'])){

            $searchFriend = $friendList->searchFriend($_POST['recherche']);
        }

        if (isset($_GET['addFriendId'])){
            $friendList->addFriend($_GET['addFriendId'], $_SESSION['user_id']);
        }
    ?>
    </section>

    <section class="AddFriends">
        <article>
            <br>
            <h1>Ajoutez des amis !</h1><br>
            <p>Avec des amis c'est toujours plus fun !<br>
                Pensez à ajouter des amis afin de voir leurs sondages, d'y participer et de pouvoir les commenter. 
                Ajoutez un(e) ami(e) en recherchant son nom ou directement depuis la barre de recherche ci-dessous.  
            </p>
        

            <p class="titre">RECHERCHER UNE PERSONNE</p>
    <form method="POST" action="friendListView.php?submit=send">
        <input type="text" placeholder="Rechercher..." name="recherche">
        <input type="submit" value="Rechercher">
    </form>

    <table>

        <?php
    if (isset($_GET['submit'])){
       foreach($searchFriend as $friend):
            if ($friend['user_id'] === $_SESSION['user_id']) {
                echo '<tr><td>' . $friend["user_pseudo"] . '</td><td><p>|  Vous </p></td></tr>'; 
            }
            echo '<tr><td>' . $friend["user_pseudo"] . '</td><td><a href="friendListView.php?addFriendId='.$friend['user_id'] .'" class="green">|  Ajouter amis </a></td></tr>'; 
        endforeach;
    }   
              
         ?>
    </table>
    </article>

        <img src="../img/Friends@2x.png">

    </section>

    <section class="FriendsList">

    <article class="List01">

    <h1>Liste des sondages en cours de vos amis</h1>
    <ul>
        <?php
            $listeSondageEnCours = $sondageEnCours->getSondageEnCours($_SESSION['user_id']);

        ?>
    </ul>

    </article>

    <article class="List02">

    <p class="titre">Liste d'amis</p>
    <?php
        $listFriends = $friendList->getFriendList();
        $listFriendsH = $friendList->getFriendListDisconnect();
    ?>
    </article>

    </section>

</body>

</html>