<?php
$connect = mysqli_connect("localhost","root","","abd25247361") or die("connection impossible");

$cin = $_POST["cin"];
$nom = $_POST["nom"];
$pr = $_POST["pr"];
$dn = $_POST["dn"];
$r1 = $_POST["r1"];
$s1 = $_POST["s1"];

$req = "SELECT *
        FROM abonne
        WHERE cin = '$cin'";
$res = mysqli_query($connect , $req) or die(mysqli_error($connect));

if (mysqli_num_rows($res) != 0){
    echo "L'abonné(e) existe dans la base";
}
else{
    $req2 = "INSERT into abonne
         VALUES ('$cin','$nom','$pr','$dn','$r1','$s1')";
    $res2 = mysqli_query($connect , $req2) or die(mysqli_error($connect));
    if (mysqli_affected_rows($connect)> 0){
        echo"Terminé avec succès";
    }
    else{
        echo"Échec de l'ajout";
    }
}
?>