//atributos=propiedades
//this=esta clase
//segunda forma de generar objetos con java
//JSON=Java script object Notation-clave=Valor
var alumno={
    nombre:'Pedro',
    apellido:'Diaz',
    nombreCompleto: function(){
        return this.nombre+' '+this.apellido;
    }
}
//esto es para adicionar atributos//
alumno.telefono='3115880008';
console.log(alumno);
//acceso por operador punto 
console.log(alumno.nombreCompleto()); 
console.log(alumno.nombre);
console.log(alumno.apellido);


//tarea  suma,resta,multiplicacion y division//
/*var fraccionario{
    n1:1,
    n2:2,
    d1:2,
    d2:3,
    suma:function() {
        return this 
        
    }

}*/

hohlhlhlhlhlh