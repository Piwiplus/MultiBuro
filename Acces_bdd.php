<?php 
//Création de l'objet
$connect = new PDO('mysql:dbname='.mrkt_Multiburo.';host='.localhost.';port='.3306,root,);

//preparation requête
$stmt = $connect->prepare("SELECT codeR,libelleR,typeR,capaciteR,tarifJourR FROM ressource RS INNER JOIN reservation RV ON RS.codeR = RV.code_ressource WHERE date_reservation != DATE(NOW()) AND codeR LIKE :srch_code OR libelleR LIKE :srch_libelle");

//association des variables
$stmt->bindParam(':srch_code', $srch_code, PDO::PARAM_VARCHAR, 4);
$srch->bindParam(':srch_libelle' $srch_libelle PDO::PARAM_VARCHAR, 40);

//association des variables & Execution
$stmt->execute();

if($result = $stmt->fetchAll())
{
    foreach($result as $ligne)
    {
        echo $ligne['codeR'].' '.$ligne['libelleR'].' '.$ligne['typeR'].' '.$ligne['capaciteR'].' '.$ligne['tarifJourR'];
    }
}
?>
