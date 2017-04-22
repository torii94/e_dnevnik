<?php

require_once 'helper.php';

class Korisnik extends Helper {
	function getProf()
    {
        $sql = "SELECT * FROM korisnik where tip_korisnika='Profesor' ";

        $baza = new Baza();
        $rezultat = $baza->query($sql);

        return $rezultat;
    }
    function getUcenik()
    {
        $sql = "SELECT * FROM korisnik where tip_korisnika='Ucenik' ";

        $baza = new Baza();
        $rezultat = $baza->query($sql);

        return $rezultat;
    }

    function getLogin($email, $password)
    {
        $sql = "SELECT * FROM korisnik WHERE email = '$email' AND password = '$password'";

        $baza = new Baza();
        $rezultat = $baza->query($sql);

        if ($rezultat->num_rows > 0) {
            while ($redak = $rezultat->fetch_assoc()) {
                return $redak;
            }
        } else {
            return 0;
        }
    }
}
