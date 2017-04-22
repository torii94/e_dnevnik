<?php

include_once '../baza/dba.php';


$ime = $_POST['Ime'];
$prezime = $_POST['Prezime'];
$jmbg = $_POST['JMBG'];
$datum_rodjenja = $_POST['Datum_rodjenja'];
$tip_korisnika = $_POST['Tip_Korisnika'];
$id_grad= $_POST['Grad_idGrad'];
$id_razred=$_POST['Razred_idRazred'];
$email = $_POST['email'];
$password = crypt($_POST['password'],"angular");

$sql = "INSERT INTO korisnik VALUES(null, '$ime', '$prezime', '$jmbg' ,'$datum_rodjenja','$tip_korisnika','$id_grad', '$id_razred','$email','$password')";

$baza = new Baza();
$rezultat = $baza->query($sql);