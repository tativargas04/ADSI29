<?php
include_once("objeto.php");

$objMaterial=new Material ("Terror", "E513", "Howard Phillips Lovecraft", "LOS MITOS DE CTHULHU", 978, "DISPONIBLE");
$libro =new libro ("COMCOSUR");

$objJavaScript=new Material ("LENGUAJES DE PROGRAMACIÓN", "l001", "David Sawyer McFarland", "JavaScript", 001, "DISPONIBLE");
$LibroJavaScript=new libro ("Anaya Multimedia");


echo "<center>";
echo ('<img src="image/libro.png">');
echo "<br>";
$objMaterial->datos();
$libro->datosL();
echo "<br>";

echo "<br>";
echo ('<img src="image/javascript.jpg"');
echo "<br>";
echo "<br>";
$objJavaScript->datos();
$LibroJavaScript->datosL();
?>