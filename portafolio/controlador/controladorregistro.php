<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECO&MUEBLES</title>
</head>
<body>
<?php 
require('../vista/registrousuarios.php');
require('../dao/daoUsuariosImpl.php');
$dao=new DaoUsuariosImpl();
if (isset($_GET['register'])) {
    $id_usuarios=$_GET['idusuario'];
    $id_tipos=$_GET['idtipos'];
    $documento_usuarios=$_GET['documentouser'];
    $nombres_usuarios=$_GET['nameuser'];
    $apellidos_usuario=($_GET['apeuser']); 
    $correo_usuario=$_GET['email'];
    $telefono=$_GET['tel'];
    $pass_usuarios=$_GET['pass'];
    $direccion=$_GET['direc'];
    $id_municipios=$_GET['idmuni'];
    $id_rol=$_GET['idRol'];
    $nom_comuna=$_GET['nomcomuna'];
     $a=new Usuarios($id_usuarios,$id_tipos,$documento_usuarios,$nombres_usuarios,
      $apellidos_usuario,$correo_usuario,$telefono,$pass_usuarios,$direccion,$id_municipios,
      $id_rol,$nom_comuna);
    $dao->registrar($a);
    echo "REGISTRO INSERTADO CON EXITO";    
} 
           
?>    
</body>
</html>
