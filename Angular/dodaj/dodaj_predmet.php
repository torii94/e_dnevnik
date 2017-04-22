<?php

include_once '../baza/dba.php';


$naziv = $_POST['Naziv'];
$id_profesor=$_POST['Korisnik_idProfesor'];

$sql = "INSERT INTO predmet VALUES(null,'$naziv','$id_profesor')";

$baza = new Baza();


$rezultat = $baza->query($sql);

