<?php
$hostname = "192.168.1.87";
$username = "robotlog";
$password = "0000";
$db = "robotTransporteur";

$dbconnect = mysqli_connect($hostname, $username, $password, $db);

if ($dbconnect->connect_error) {
    die("Database connection failed: " . $dbconnect->connect_error);
}

// Vérification si le formulaire a été soumis 
if(isset($_POST['submit'])) 
{
    //Récupération des valeurs de la zone de départ et de la zone d'arrivée et la commande
    $depart = mysqli_real_escape_string($dbconnect, $_POST['depart']);
    $arrivee = mysqli_real_escape_string($dbconnect, $_POST['arrivee']);
    $element = mysqli_real_escape_string($dbconnect, $_POST['element']);

    // Debugging: Affichage des valeurs reçues
    var_dump($_POST);

    // Vérification de la saiser des données
    if(empty($depart) || empty($arrivee) || empty($element))
    {
        die("Missing input data.");
    }

    // Insertion des valeurs dans la table "trajet"
    $query1 = "INSERT INTO trajet (zoneDepart, zoneArrivee, autonomieDepart,autonomieArrivee, etatTrajet, 
              horodatage) VALUES ($depart, $arrivee,50,60,1, NOW())";

    // Insertion des valeurs dans la table "commande"
    $query2 = "INSERT INTO commande (nbCommande, type_commande) VALUES (1, '$element')";

    //Prépartion de requêtes SQL
    $stmt1 = mysqli_prepare($dbconnect, $query1);
    $stmt2 = mysqli_prepare($dbconnect, $query2);

    mysqli_stmt_bind_param($stmt1, "ss", $depart, $arrivee);
    mysqli_stmt_bind_param($stmt2, "s", $element);

    // Exécution de la requête
    if (mysqli_stmt_execute($stmt1) && mysqli_stmt_execute($stmt2)) 
    {
        echo "Les données sont bien enregistrée.";
    } 
    else 
    {
        die('Error: ' . mysqli_error($dbconnect));
    }

    mysqli_stmt_close($stmt1);
    mysqli_stmt_close($stmt2);
}

mysqli_close($dbconnect);
?>




