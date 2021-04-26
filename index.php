<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/header.css">

    <title>Autocomplétion - Marie Clerc</title>
</head>

<body>
    <main>
        <section class="flex">
            <div class="card">
                <h1>Bienvenue au musée</h1>
                <label for="searchart" class="m-2">Recherchez une oeuvre d'art : </label>
                <form action="recherche.php" method="get">
                    <input id="searchart" name="search" class="form-control input-lg" placeholder="La Joconde, Debussy, Sculpture..." autofocus>
                    <div id="resultats"></div>
                </form>
            </div>
        </section>

        <section class="list">
            <ul>
                <p>Exemples d'oeuvres d'art dans la bdd : </p>
                <li>Vénus de Milo</li>
                <li>Groupe du Laocoon</li>
                <li>La Nuit étoilée</li>
                <li>Grand Palais</li>
            </ul>
            <ul>
                <p>Exemples d'artistes dans la bdd : </p>
                <li>Michel-Ange</li>
                <li>Victor Hugo</li>
                <li>Phidias</li>
                <li>Claude Monet</li>
            </ul>
            <ul>
                <p>Exemples de catégories dans la bdd : </p>
                <li>Sculpture</li>
                <li>Peinture</li>
                <li>Architecture</li>
                <li>Musique</li>
            </ul>

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