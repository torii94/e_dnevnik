<?php

include_once '../baza/dba.php';


$ocjena =$_POST['Ocjena'];
$datum=$_POST['Datum'];
$id_predmet=$_POST['Predmet_id'];
$id_ucenik=$_POST['Korisnik_idUcenik'];

$sql = "INSERT INTO ucenik_predmet VALUES(null,'$ocjena','$datum','$id_predmet','$id_ucenik')";

$baza = new Baza();


$rezultat = $baza->query($sql);

