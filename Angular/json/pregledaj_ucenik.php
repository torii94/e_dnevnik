<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Proba</title>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

	</head>
	<body>


<?php

$connect=mysqli_connect("localhost", "root","","e_dnevnik");
mysqli_set_charset($connect,"utf8");


$sql="SELECT ucenik.Ime, ucenik.Prezime,predmet.Naziv, ucenik_predmet.Ocjena, ucenik_predmet.Datum, izostanak.Opravdano
 	FROM korisnik as profesor 
 	INNER JOIN predmet 
 	ON profesor.idKorisnik=predmet.Korisnik_idProfesor 
 	INNER JOIN ucenik_predmet 
 	ON predmet.idPredmet=ucenik_predmet.Predmet_id 
 	INNER JOIN korisnik as ucenik 
 	ON ucenik.idKorisnik=ucenik_predmet.Korisnik_idUcenik 
 	INNER JOIN izostanak
 	ON ucenik.idKorisnik=izostanak.Korisnik_idUcenik
 	 ";

$result=mysqli_query($connect, $sql);
$json_array=array();
while($row = mysqli_fetch_assoc($result)) {
	$json_array[]=$row;

}

$out = array_values($json_array);
echo json_encode($out);

?>		
	</body>
</html>