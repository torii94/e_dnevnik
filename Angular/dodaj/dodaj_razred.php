<?php

include_once '../baza/dba.php';

$odjeljenje = $_POST['Odjeljenje'];
$godina = $_POST['Godina'];


$sql = "INSERT INTO razred VALUES(null,  '$odjeljenje','$godina' )";

$baza = new Baza();


$rezultat = $baza->query($sql);

