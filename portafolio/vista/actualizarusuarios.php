<?php 
$consulta= consultarPersona($_GET['id_usuarios']);

function consultarPersona($id){
    include '../conexion/conexion2.php';
    $sentencia="SELECT * FROM usuarios WHERE id_usuarios='".$id."'";
    $resultado=$conexion->query($sentencia) or die ("Error de conexion".mysqli_error($conexion));
    $fila=$resultado->fetch_assoc();
return[
    $fila['id_usuarios'],
    $fila['id_tipos'],
    $fila['documento_usuarios'],
    $fila['nombres_usuarios'],
    $fila['apellidos_usuario'],
    $fila['correo_usuario'],
	$fila['telefono'],
	$fila['pass_usuarios'],
	$fila['direccion'],
	$fila['id_municipios'],
	$fila['id_rol'],
	$fila['nom_comuna']
];
}

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>ECO&MUEBLES</title>		
	<link rel="stylesheet" type="text/css" href="">
	<meta charset="utf-8">
	<meta name="keywords">
	<meta name="description" content="">
	<meta name="viewport" content="width-device-width, initial-scale-1.0">
</head>
<body>
	
<header>
	<h1 id="tit">ACTUALIZAR USUARIO</h1>
</header>
<form method="GET" action="../controlador/controladoractualizar.php"> 
	<p>Hola! </P>
	<label>Id Usuarios</label>
	<input type="text" class="ctexto" name="id_usuarios" value="<?php echo $consulta[0]?>" ><br><br>
	<label>Id tipos</label>
	<input type="text" class="ctexto" name="idtipos" value="<?php echo $consulta[1]?>"><br><br>
	<label>Documento Usuarios</label>
	<input type="text" class="ctexto" name="documentouser" value="<?php echo $consulta[2]?>"><br><br>
	<label>Nombres Usuarios</label>
	<input type="text" class="ctexto"  name="nameuser" value="<?php echo $consulta[3]?>"><br><br>																																	
	<label>Apellidos Usuarios</label>
	<input type="text" class="ctexto"  name="apeuser" value="<?php echo $consulta[4]?>"><br><br>
	<label>Correo Usuarios</label>
	<input type="email" class="ctexto"  name="email" value="<?php echo $consulta[5]?>"><br><br>
	<label>Telefono</label>
	<input type="text" class="ctexto" name="tel" value="<?php echo $consulta[6]?>"><br><br>
	<label>Clave Usuarios</label>
	<input type="password" class="ctexto"  name="pass" value="<?php echo $consulta[7]?>"><br><br>
	<label>Direccion</label>
	<input type="text" class="ctexto"  name="direc" value="<?php echo $consulta[8]?>"><br><br>
	<label>Id Municipios</label>
	<input type="text" class="ctexto" name="idmuni" value="<?php echo $consulta[9]?>"><br><br>
	<label>Id Rol</label>
	<input type="text" class="ctexto"  name="idRol" value="<?php echo $consulta[10]?>"><br><br>
	<label>Nombre Comuna</label>
	<input type="text" class="ctexto"  name="nomcomuna" value="<?php echo $consulta[11]?>"><br><br>
	<input class="b1" type="submit"  name="update" value="ACTUALIZAR">
	
</form>
	<a id="v" href="../vista/listarusuarios.php"><button class="b1"> VOLVER LISTADO</button></a>
<footer>
</footer>

</body>
</html>