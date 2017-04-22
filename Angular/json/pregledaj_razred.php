<!DOCTYPE html>
<html>
	<head>
		<title>Proba</title>
	</head>
	<body>
<?php

$connect=mysqli_connect("localhost", "root","","e_dnevnik");

$sql="select * from razred";
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