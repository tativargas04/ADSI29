<?php
$num = $_POST['num'];

$nums1 = array();
for ($i = 0; $i < $num; $i++) {
    $nums1[$i] = rand(0, 100);
}
for ($i = 0; $i < $num; $i++) {
    echo $nums1[$i] . '</br>';
}


$numeros = $nums1;
foreach ($numeros as $numero) {
    if (!isset($menor)) {
        $menor = $numero;
    } elseif ($menor > $numero) {
        $menor = $numero;
    }
}

echo '</br> El número menor es: ' . $menor;


?>