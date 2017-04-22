<?php

include_once '../baza/dba.php';


$datum = $_POST['Datum'];
$opravdano = $_POST['Opravdano'];
$id_ucenik=$_POST['Korisnik_idUcenik'];

$sql = "INSERT INTO izostanak VALUES(null,'$datum','$opravdano','$id_ucenik')";

$baza = new Baza();


$rezultat = $baza->query($sql);

