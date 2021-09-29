<?php
$num = $_POST['num'];

$nums1 = array();
for ($i = 0; $i < $num; $i++) {
    $nums1[$i] = rand(0, 100);
}
for ($i = 0; $i < $num; $i++) {
    echo $nums1[$i] . '</br>';
}


function NumeroMayor($arrayNumero)
{
    $mayor = 0;
    foreach ($arrayNumero as $valor) {
        if ($valor > $mayor)
            $mayor = $valor;
    }
    return $mayor;
}

$mayor = NumeroMayor($nums1);

print " </br> el numero mayor es: " . $mayor ;


?>