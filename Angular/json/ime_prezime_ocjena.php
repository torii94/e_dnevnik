
<?php

$connect=mysqli_connect("localhost", "root","","e_dnevnik");
mysqli_set_charset($connect,"utf8");

$id = $_GET["id"];

$sql="SELECT ucenik.Ime, ucenik.Prezime ,predmet.Naziv, GROUP_CONCAT(ucenik_predmet.Ocjena) As Ocjena
 	FROM korisnik as profesor 
 	INNER JOIN predmet 
 	ON profesor.idKorisnik=predmet.Korisnik_idProfesor 
 	INNER JOIN ucenik_predmet 
 	ON predmet.idPredmet=ucenik_predmet.Predmet_id 
 	INNER JOIN korisnik as ucenik 
 	ON ucenik.idKorisnik=ucenik_predmet.Korisnik_idUcenik
 	WHERE profesor.idKorisnik =". $id ."

    GROUP by ucenik.idKorisnik  ";

$result=mysqli_query($connect, $sql);
$json_array=array();
while($row = mysqli_fetch_assoc($result)) {
	$json_array[]=$row;

}

$out = array_values($json_array);
echo json_encode($out);

?>		
	