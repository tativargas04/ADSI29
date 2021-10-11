<?php
class Usuarios{
private $id_usuarios;
private $id_tipos;
private $documento_usuarios;
private $nombres_usuarios;
private $apellidos_usuario;
private $correo_usuario;
private $telefono;
private $pass_usuarios;
private $direccion;
private $id_municipios;
private $id_rol;
private $nom_comuna;

function __construct($id_usuarios,$id_tipos,$documento_usuarios,$nombres_usuarios,
$apellidos_usuario,$correo_usuario,$telefono,$pass_usuarios,$direccion,$id_municipios,
$id_rol,$nom_comuna){
    $this->id_usuarios=$id_usuarios;
    $this->id_tipos=$id_tipos;
    $this->documento_usuarios=$documento_usuarios; 
    $this->nombres_usuarios=$nombres_usuarios; 
    $this->apellidos_usuario=$apellidos_usuario; 
    $this->correo_usuario=$correo_usuario; 
    $this->telefono=$telefono;
    $this->pass_usuarios=$pass_usuarios;
    $this->direccion=$direccion;
    $this->id_municipios=$id_municipios;
    $this->id_rol=$id_rol;
    $this->nom_comuna=$nom_comuna;
    

    

}

function getid_usuarios() {
    return $this->id_usuarios;
}

function setid_usuarios($id_usuarios) {
    $this->id_usuarios = $id_usuarios;
}

function getid_tipos() {
    return $this->id_tipos;
}

function setid_tipos($id_tipos) {
    $this->id_tipos = $id_tipos;
}

function getdocumento_usuarios() {
    return $this->documento_usuarios;
}

function setdocumento_usuarios($documento_usuarios) {
    $this->documento_usuarios = $documento_usuarios;
}

function  getnombres_usuarios() {
    return $this->nombres_usuarios;
}

function  setnombres_usuarios($nombres_usuarios){
    $this->nombres_usuarios= $nombres_usuarios;
}

function  getapellidos_usuario() {
    return $this->apellidos_usuario;
}

function  setapellidos_usuario($apellidos_usuario){
    $this->apellidos_usuario= $apellidos_usuario;
}

function  getcorreo_usuario() {
    return $this->correo_usuario;
}

function  setcorreo_usuario($correo_usuario){
    $this->correo_usuario= $correo_usuario;
}

function  gettelefono() {
    return $this->telefono;
}

function  settelefono($telefono){
    $this->telefono= $telefono;
}
function  getpass_usuarios() {
    return $this->pass_usuarios;
}

function  setpass_usuarios($pass_usuarios){
    $this->pass_usuarios= $pass_usuarios;
}
function  getdireccion() {
    return $this->direccion;
}

function  setdireccion($direccion){
    $this->direccion= $direccion;
}
function  getid_municipios() {
    return $this->id_municipios;
}

function  setid_municipios($id_municipios){
    $this->id_municipios= $id_municipios;
}
function  getid_rol() {
    return $this->id_rol;
}

function  setid_rol($id_rol){
    $this->id_rol= $id_rol;
}
function  getnom_comuna() {
    return $this->nom_comuna;
}

function  setnom_comuna($nom_comuna){
    $this->nom_comuna= $nom_comuna;
}
}