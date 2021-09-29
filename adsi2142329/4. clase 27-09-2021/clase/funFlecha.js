function saludo(){
    return 'Hola ADSI';
}
console.log(saludo());

var x=()=>'hola adsi'
console.log('flecha'+x());

var suma=(x,y)=>x+y;
console.log(suma(3,4));

function cuadrado(param) {
    return param*param;   
}

// function  llenarVector(arreglo,tam){
//     for (let i = 0; i < tam; i++) {
//         arreglo.push(Math.round(Math.random()*100));   
//     }
//     return arreglo;

// }

// let vec=new Array()
// let x=10;
// llenarVector(vec,x)
// console.log(vec);

var vec = (arreglos,tam)=>{
    for (let i = 0; i < tam; i++) {
        arreglos.push(Math.round(Math.random()*100))
        
    }
    return arreglos;
} 

z = new Array();
console.log(vec(z,10));
console.log('---------------------'+typeof(vec));