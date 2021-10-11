<?php 
interface daoUsuarios{
    public function registrar(Usuarios $a);
    public function modificar(Usuarios $a);
    public function eliminar(Usuarios $a);
    //public function buscar($campo,$dato);
    public function listar();
}
?>  