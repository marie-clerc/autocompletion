<?php
include ('classes/database.php');
$pdo = getPdo();

/**
 * isset de "en savoir plus.."
 */

// Est-ce qu'id existe et n'est pas vide dans l'url?
if (isset($_GET['id']) && !empty($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM `oeuvre` WHERE `id` = :id";
    $query = $pdo->prepare($sql);
    $query->execute([
        "id" => $id
    ]);
    // On récupère l'oeuvre
    $oeuvre = $query->fetch();
} else {
    $_SESSION['erreur'] = "URL invalide";
} ?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="style/element.css">
    <link rel="stylesheet" href="style/header.css">

    <title>Autocomplétion - Marie Clerc</title>
</head>

<body>
<header>
    <h2><a href="index.php">Le Musée</a></h2>
    <div class="input-group rounded recherchetool">
        <form action="recherche.php" method="get">
            <input id="searchart" name="search" class="form-control input-lg" placeholder="Rechercher..." autofocus>
            <div id="resultats" style="position: absolute"></div>
        </form>
    </div>
</header>
<main>
    <h1><?= $oeuvre['nom'] ?></h1>
        <div class="grid-container">
            <div class="image">
                <img style="max-width: 300px;" src="<?= $oeuvre['image'] ?>" alt="<?= $oeuvre['nom'] ?>">
            </div>
            <div class="info">
                <div class="artiste">
                    <?= $oeuvre['artiste'] ?>
                </div>
                <div class="date">
                    <?= $oeuvre['date'] ?>
                </div>
                <div class="courant">
                    <?= $oeuvre['categorie'] ?>, <?= $oeuvre['courant'] ?>
                </div>
                <div class="conservation">
                    <?= $oeuvre['conservation'] ?>
                </div>
            </div>
        </div>
</main>
<footer>
    Marie CLERC
</footer>
<!-- script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="script/script.js"></script>
</body>
</html>
