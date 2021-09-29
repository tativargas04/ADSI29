<?php
$num=$_POST['num'];

$nums1=array();
for ($i=0; $i<$num ; $i++) { 
    $nums1[$i]=rand(0,100);
}
for ($i=0; $i <$num ; $i++) { 
    echo $nums1[$i].'</br>';
}

function prom($numeros){
    $sum=0;
    for ($i=0; $i <count($numeros) ; $i++) { 
        $sum+=$numeros[$i];
    }
    return $sum;
}
echo "el promedio es ".prom($nums1)/$num;
?>