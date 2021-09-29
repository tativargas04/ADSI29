<?php
include 'herenciaMateriales.php';

class Materiales
{
    private $tipoMaterial;
    private $codigo;
    private $autor;
    private $titulo;
    private $año;
    private $status;

    public function __construct($tipoMaterial, $codigo, $autor, $titulo, $año, $status)
    {
        $this->tipoMaterial = $tipoMaterial;
        $this->codigo       = $codigo;
        $this->autor        = $autor;
        $this->titulo       = $titulo;
        $this->año          = $año;
        $this->status       = $status;
    }

    // setters

    public function setTipoMaterial($tipoMaterial)
    {
        $this->tipoMaterial = $tipoMaterial;
    }

    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;
    }

    public function setAutor($autor)
    {
        $this->autor = $autor;
    }

    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;
    }

    public function setAño($año)
    {
        $this->año = $año;
    }

    public function setStatus($status)
    {
        $this->status = $status;
    }

    // getters

    public function getTipoMaterial()
    {
        return $this->tipoMaterial;
    }

    public function getCodigo()
    {
        return $this->codigo;
    }

    public function getAutor()
    {
        return $this->autor;
    }

    public function getTitulo()
    {
        return $this->titulo;
    }

    public function getAño()
    {
        return $this->año;
    }

    public function getStatus()
    {
        return $this->status;
    }
}

$obj->setTipoMaterial('libro');
$obj->setCodigo(545);
$obj->setAutor('brandon Marin');
$obj->setTitulo('POO');
$obj->setAño(2021);
$obj->setStatus("buen estado");

echo $obj->

?>
