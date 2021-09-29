<?php 

include 'herencia_.php';

class libros extends Materiales {

    public $editorial;

    public function __construct($editorial){
        $this->editorial = $editorial;
    }

    
}


?>