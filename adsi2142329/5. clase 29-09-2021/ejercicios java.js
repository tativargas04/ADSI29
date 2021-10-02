//tarea: hacer los ejercicios

// Generar el array
var  vec = ( matriz , tam ) => {
    para  ( sea  i  =  0 ;  i  <  tam ;  i ++ )  {
        matriz . empujar ( Math . round ( Math . aleatorio ( ) * 100 ) ) ;
        
    }
     //matriz de retorno ;
}
v = [ ] ;
x = 5 ;
consola . log ( 'Flecha:' + vec ( v , x ) ) ;

// Suma del array
var  suma = v => {
    sea : suma = 0 ;
    para  ( sea  i  =  0 ;  i <  v . longitud ;  i ++ )  {
        suma + = v [ i ] ;
    }  
    return  suma ; 
}
consola . log ( 'La suma de los elementos del array es:' +  sum ( v ) ) ;

// Promedio del array
var  prom = ( v , x ) => {
    sea : promedio = 0 ;
    para  ( sea  i  =  0 ;  i <  v . longitud ;  i ++ )  {
        promedio + = v [ i ] / x ;
    }  
    //retorno  promedio ; 
}
consola . log ( 'El promedio de los elementos del array es:' +  prom ( v , x ) ) ;

// Mayor del array
var  mayor = v => {
    sea : may = 0 ;
    para  ( sea  i  =  0 ;  i <  v . longitud ;  i ++ )  {
        if  ( v [ i ] > may )  {		
            posicion = i ;
            mayo = v [ i ] ;
        }
    }  
    //regreso  puede ; 
}
consola . log ( 'El número mayor de los elementos del array es:' +  mayor ( v ) + 'y su posicion es:' + posicion ) ;

// Menor del array
var  menor  = v => Matemáticas . min ( ... v ) ;
consola . log ( 'el numero menor es:' + menor ( v ) ) ;