<?php

use App\IndexTest;

require "../Autoloader.php";
Autoloader::register();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css">
    <title>Index</title>
</head>
<body>

    
    <?php
        include 'header.php';
        $sondageEnCours = new IndexTest();
        $listeSondageFini = $sondageEnCours->getSondageFinis($_SESSION['user_id']);
    ?>
    
    <section class="Index00">
     <p><span>Könnun</span><br>Votre site de sondage entre amis!</p>
    </section>

    <section class="Index01">
    <h1>Liste des sondages en cours</h1>
    <ul>
        <?php
            $listeSondageEnCours = $sondageEnCours->getLesSondageEnCours($_SESSION['user_id']);

        ?>
    </ul>

    </section>

    <section class="Index1-2">
        <p>Könnun est un site de sondage spécialisé dans les emissions Tv<br>
        Veuillez respecter le thème du site sous peine d'exclusion temporaire !<br>
        Voici des exemples d'émissions qui font souvent débat...</p>

        <img src="../img/MissFrance.png">
        <img src="../img/TopChef.png">
        <img src="../img/KohLanta.png">
        <img src="../img/TheVoice.png">

    </section>

    <section class="Index02">

    <h1>Liste de vos sondages fini</h1>
    <ul>
        <?php
            foreach($listeSondageFini as $sondage):
                echo "<li><a href = resultatView.php?sondage_id=" .  $sondage['sondage_id'] . ">". $sondage['sondage_question'] ."</a></li>"; 
            endforeach;
        ?>
    </ul>

    </section>  
    
    <section class="Index03">

    <h1>Liste de vos sondages en cours</h1>
    <ul>
        <?php
            $listeMesSondageEnCours = $sondageEnCours->getMesSondageEnCours($_SESSION['user_id']);
        ?>
    </ul>

    </section>

</body>
</html>
