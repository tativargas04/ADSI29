<!DOCTYPE html>
<html>
<head>
    <title>portafolio</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="assets/css/java.css">
</script></script>
</head>
<body>
    <div class="menu">
        <ul>
            <li><a class="active" href="index.php">volver</a></li>
            <li><a href="manual.php">Manual </a></li>
            <li><a href="blogs.php">Blogs</a></li>
            <li><a href="crud.php">Crud</a></li>
            <li><a href="java.php">Java</a></li>
        </ul>
    </div>
    <div>
    <pre> 
    //Generar el array
var vec=(array,tam)=>{
    for (let i = 0; i < tam; i++) {
        array.push(Math.round(Math.random()*100));
        
    }
    return array;
}
v=[];
x=5;
document.write('Flecha: '+vec(v,x));

//Suma del array
var sum=v=>{
    let suma=0;
    for (let i = 0; i< v.length; i++) {
        suma+=v[i];
    }  
    return suma; 
}
document.write('La suma de los elementos del array es: '+ sum(v));

//Promedio del array
var prom=(v,x)=>{
    let promedio=0;
    for (let i = 0; i< v.length; i++) {
        promedio+=v[i]/x;
    }  
    return promedio; 
}
document.write('El promedio de los elementos del array es: '+ prom(v,x));

//Mayor del array
var mayor=v=>{
    let may=0;
    for (let i = 0; i< v.length; i++) {
        if (v[i]>may) {		
            posicion=i;
            may=v[i];
        }
    }  
    return may; 
}
document.write('El numero mayor de los elementos del array es: '+ mayor(v)+' y su posicion es: '+posicion);

//Menor del array
var menor =v=>Math.min(...v);
document.write('el numero menor es:'+menor(v));
            
    </pre>
    </div>
    <div class="codigo1">
        <script src="../js/ejercicio1.js"></script>
    </div>
    <div>
        <pre>
        var frac={
    n1:1,
    n2:4,
    d1:7,
    d2:3,
    suma:function(){
        numeradorS1=this.n1 * this.d2;
        numeradorS2=this.n2 * this.d1;
        numeradorSF=numeradorS1 + numeradorS2;
        denominadorS=this.d1 * this.d2;
        return 'el resultado de la suma es '+ numeradorSF + ' / ' + denominadorS;
    },
    resta:function(){
        numeradorR1=this.n1 * this.d2;
        numeradorR2=this.n2 * this.d1;
        numeradorRF=numeradorS1 - numeradorS2;
        denominadorR=this.d1 * this.d2;
        return 'el resultado de la resta es '+ numeradorRF + ' / ' + denominadorR;
    }}
    document.write(frac.suma());
    document.write(frac.resta());
        </pre>
    </div>
    <div>
        <script src="../js/ejercicio2.js"></script>
    </div>
    <div>
        <pre>


class Persona{
    constructor(nombre,apellido){
        this._nombre=nombre;
        this._apellido=apellido;
    }
    get nombre (){
        return this._nombre;
    }
    set nombre(nombre){
        this._nombre=nombre;
    }
    get apellido (){
        return this._apellido;
    }
    set apellido(apellido){
        this._apellido=apellido;
    }
    NombreCompleto(){
        return this._nombre + ' ' +this.apellido;
    }
}

class Aprendiz extends Persona {
    constructor(nombre, apellido, ficha, programa) {
        super(nombre, apellido);
        this._ficha = ficha;
        this._programa = programa;
    }

    get programa() {
        return this._programa;
    }

    set programa(programa) {
        this._programa = programa;
    }

    get ficha() {
        return this._ficha;
    }

    set ficha(ficha) {
        this._ficha = ficha;
    }
}
var ob =new Persona('juan','perez');
console.log(ob.nombre);
ap = new Aprendiz('juan', 'bautista', '2142329', 'ADSI');
ap.nombre = 'marcela';


console.log(ap);
        </pre>
    </div>
    <div>
        <script src="../js/ejercicio3.js"></script>
    </div>
</body>
    <footer>
        <div class="marginFooter">
            <h3>paula Tatiana Vargas Quiroga</h3>
            <h3>correo:ptvargas3@misena.edu.co</h3>
        </div>
        <div class="marginFooter">
            <button><a class="active" href="index.php">Inicio</a></button>
            <button>Suscribete</button>
        </div>
    </footer>
</html>