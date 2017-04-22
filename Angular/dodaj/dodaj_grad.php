<?php

include_once '../baza/dba.php';

$naziv = $_POST['Naziv'];

$sql = "INSERT INTO grad VALUES(null, '$naziv')";

$baza = new Baza();


$rezultat = $baza->query($sql);

