<?php
include ('classes/database.php');
$pdo = getPdo();

/**
 * isset de la recherche de la page index
 */
if (isset($_GET['search'])){
    $info = htmlspecialchars(trim($_GET['search']));
    $sql = "Select * from oeuvre where ( `nom` like :nom or `artiste` like :artiste or `categorie` like :categorie or `date` like :date1 or `courant` like :courant or `conservation` like :conservation ) limit 6";
    $query = $pdo->prepare($sql);
    $query-> execute([
        "nom" => '%'.$info.'%',
        "artiste" => '%'.$info.'%',
        "categorie" => '%'.$info.'%',
        "date1" => '%'.$info.'%',
        "courant" => '%'.$info.'%',
        "conservation" => '%'.$info.'%'
    ]);
    $allresult = $query->fetchAll();
}
//var_dump($dataarray);
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="style/recherche.css">
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
    <h1>Résultats de recherche pour : "<?=$info?>"</h1>
    <section class="flex">
        <?php
        //var_dump($allresult);
        if (empty($allresult))
            echo ('<div class="card"><p>Aucun résultat enregistré pour cette recherche</p></div>');
        else {
            foreach ( $allresult as $resutl)
            {
        ?>
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="<?= $resutl['image'] ?>" alt="<?= $resutl['nom'] ?>">
            <div class="card-body">
                <h5 class="card-title"><?= $resutl['nom'] ?></h5>
                <p class="card-text"><?= $resutl['artiste'] ?> || <?= $resutl['categorie'] ?></p>
                <a href="element.php?id=<?= $resutl['id'] ?>" class="btn btn-secondary">En savoir plus..</a>
            </div>
        </div>
        <?php }
        }
        ?>
    </section>
</main>
<footer>
    Marie CLERC
</footer>
<!-- script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="script/script.js"></script>
</body>
</html>