<?php
$connect = mysqli_connect("localhost","root","","abd25247361") or die ("connection impossible");

$cin = $_POST["cin"];


$req = "SELECT *
        FROM abonne
        WHERE cin = '$cin'";
$res = mysqli_query($connect , $req) or die(mysqli_error($connect));
if (mysqli_num_rows($res) == 0){
    echo "L'abonné(e) n'existe dans la base";
}
else{
    echo'
    <table>
        <tr>
            <th>Libelle abonnement</th>
            <th>Date inscription</th>
            <th>Date validitA</th>
        </tr>';

    $req2 = "SELECT libelle , date_ins , date_val
    FROM type_abo ty , abonnement ab
    WHERE ty.idabo = ab.idabo AND cin = '$cin'";
    $res2 = mysqli_query($connect , $req2) or die(mysqli_error($connect));
    while($row = mysqli_fetch_array($res2)){
        echo"
        <tr>
            <td>$row[0]</td>
            <td>$row[1]</td>
            <td>$row[2]</td>
        </tr>";
    }   
    echo'
    </table>
    <p>Voulez-vous vraiment supprimer l\'abonné(e)?</p>
    <input type="button" value="Supprimer" onclick="anull()">
    <input type="button" value="Annuler" onclick="supprime()">
    <style>
        table{
            border-style: double;
            border-collapse: collapse;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
        }
        tr{
            border-style: double;

        }
        td,th{
            border-style: double;
        }
        th{
            padding: 7px;
        }
        p{
            text-align: center;
        }
        input{
            margin-left:160px;
        }
    </style>';
    
}

?>