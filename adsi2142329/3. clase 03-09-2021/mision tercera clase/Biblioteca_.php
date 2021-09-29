<?php 
class Biblioteca {

    protected $material;
    protected $nombreBiblioteca;
    protected $direccion;

    public function __construct($material,$nombreBiblioteca,$direccion){
        $this->material = $material;
        $this->nombreBiblioteca = $nombreBiblioteca;
        $this->direccion       = $direccion;
    }

    function setter($nomAtributo,$valor){
        $this->nomAtributo = $valor;
    }

    function getter($datos){
        return $this->datos;
    }
}

$biblioteca = new Biblioteca("libros","arango","simon Bolivar");

$biblioteca->setter('material',"libros");
$biblioteca->setter('nombreBiblioteca','arango');
$biblioteca->setter('direccion','Simon Bolivar');

echo $biblioteca->getter("material");
echo $biblioteca->getter("nombreBiblioteca");
echo $biblioteca->getter("direccion");




?>