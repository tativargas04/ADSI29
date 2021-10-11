<?php
include('daoUsuarios.php');
include ('../conexion/conexion.php');
include ('../modelo/usuarios.php');

class DaoUsuariosImpl extends Conexion implements daoUsuarios{
   
    
    public function registrar(Usuarios $a){ 
        try{
        if ($this->getCnx()!=null) {
        $id_usuarios=$a->getid_usuarios();
        $id_tipos=$a->getid_tipos();
        $documento_usuarios=$a->getdocumento_usuarios();
        $nombres_usuarios=$a->getnombres_usuarios();
        $apellidos_usuario=$a->getapellidos_usuario();
        $correo_usuario=$a->getcorreo_usuario();
        $telefono=$a->gettelefono();
        $pass_usuarios=$a->getpass_usuarios();
        $direccion=$a->getdireccion();
        $id_municipios=$a->getid_municipios();
        $id_rol=$a->getid_rol();
        $nom_comuna=$a->getnom_comuna();
        $sql="INSERT INTO usuarios VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
        $stmt=$this->getCnx()->prepare($sql);
        $stmt->execute([$id_usuarios,$id_tipos,$documento_usuarios,$nombres_usuarios,
        $apellidos_usuario,$correo_usuario,$telefono,$pass_usuarios,$direccion,$id_municipios,
        $id_rol,$nom_comuna]);        
        } else {
            echo $this->getCnx().' Es nulo <br>';
        }
    }catch(PDOException $p){
        echo $p->getMessage().'Datos no registrados';
    }
               
        
    }    
    ////funcion modificar
public function modificar(Usuarios $a){  
    $id_usuarios=$a->getid_usuarios();      
    $id_tipos=$a->getid_tipos();
    $documento_usuarios=$a->getdocumento_usuarios();
    $nombres_usuarios=$a->getnombres_usuarios();
    $apellidos_usuario=$a->getapellidos_usuario();
    $correo_usuario=$a->getcorreo_usuario();
    $telefono=$a->gettelefono();
    $pass_usuarios=$a->getpass_usuarios();
    $direccion=$a->getdireccion();
    $id_municipios=$a->getid_municipios();
    $id_rol=$a->getid_rol();
    $nom_comuna=$a->getnom_comuna();
    $sql="UPDATE usuarios
    SET id_tipos ='$id_tipos', documento_usuarios = '$documento_usuarios', 
    nombres_usuarios = '$nombres_usuarios', apellidos_usuario = '$apellidos_usuario',
    correo_usuario ='$correo_usuario',telefono ='$telefono',pass_usuarios ='$pass_usuarios',
    direccion ='$direccion',id_municipios ='$id_municipios',id_rol ='$id_rol',nom_comuna ='$nom_comuna'
    WHERE id_usuarios ='$id_usuarios'";
    $stmt=$this->getCnx()->prepare($sql);
    $stmt->execute();
}

    public function eliminar($a){        
        $id=$_GET['id_usuarios'];
        $stmt=$this->getCnx()->prepare("DELETE FROM usuarios where id_usuarios=$id");
        $stmt->execute(); 

    }
//public function listar();
public function listar(){
    $lista = null;
    try{    
        $stmt = $this->getCnx()->prepare("SELECT * FROM usuarios");
        $lista = array();
        $stmt->execute();
        foreach ($stmt as $key ) { 
            $a = new Usuarios(null,null,null,null,null,null,null,null,null,null,null,null);
            $a->setid_usuarios($key['id_usuarios']);
            $a->setid_tipos($key['id_tipos']);
            $a->setdocumento_usuarios($key['documento_usuarios']);
            $a->setnombres_usuarios($key['nombres_usuarios']);
            $a->setapellidos_usuario($key['apellidos_usuario']);
            $a->setcorreo_usuario($key['correo_usuario']);    
            $a->settelefono($key['telefono']); 
            $a->setpass_usuarios($key['pass_usuarios']); 
            $a->setdireccion($key['direccion']); 
            $a->setid_municipios($key['id_municipios']); 
            $a->setid_rol($key['id_rol']); 
            $a->setnom_comuna($key['nom_comuna']);          
            array_push($lista,$a);            
        }        
        //$this->getCnx()->close();
    }catch(PDOException $e){
        $e->getMessage().'error en listar de DaoUsuariosImpl';
    } 
        return $lista;       
    }       
    //public function buscar($campo,$dato);
    
}


?>
