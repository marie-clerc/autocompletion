<?php
include ('database.php');

/**
 * il faut convertir les données de la database en json
 */
$pdo = getPdo();

$info = htmlspecialchars(trim($_GET['search']));
$sql = "Select * from oeuvre where ( `nom` like :nom or `artiste` like :artiste or `categorie` like :categorie or `date` like :date1 or `courant` like :courant or `conservation` like :conservation ) limit 5";
$query = $pdo->prepare($sql);
$query-> execute([
    "nom" => '%'.$info.'%',
    "artiste" => '%'.$info.'%',
    "categorie" => '%'.$info.'%',
    "date1" => '%'.$info.'%',
    "courant" => '%'.$info.'%',
    "conservation" => '%'.$info.'%'
]);
//creer un tableau avec les résultats
$dataarray = array();
while($row = $query->fetch())
{
    $dataarray[] = $row;
    /*$dataarray["nom"] = $row["nom"];
    $dataarray["artiste"] = $row["artiste"];
    $dataarray["categorie"] = $row["categorie"];
    $dataarray["date"] = $row["date"];
    $dataarray["courant"] = $row["courant"];
    $dataarray["conservation"] = $row["conservation"];*/
}
// Convert PHP Array to JSON String
//var_dump($dataarray);
echo json_encode($dataarray);

