<?php
include_once './baza/korisnici.php';

$korisnici = new Korisnik();
$korisnik = $korisnici->getLogin($_POST["email"], crypt($_POST["password"],"angular"));

if ($korisnik != 0 AND session_status() == PHP_SESSION_NONE) {
    session_start();
    $_SESSION['korisnik'] = $korisnik;



    if($korisnik['Tip_Korisnika'] != "Ucenik")
    	header("Location: profesor.php?id=" . $korisnik["idKorisnik"]);
    else
    	header("Location: ucenik.php?id=" . $korisnik["idKorisnik"]);

} else {
   echo $korisnik;
}
	