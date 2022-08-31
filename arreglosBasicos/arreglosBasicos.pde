
//1) Declaracion
String nombre;
String[] nombres;
//String[] nombres = new String[5];

void setup(){
  size( 400, 400 );
  
  //1.5) darle tamanio al array
  nombres = new String[5];
  
  //2) Asignacion
  nombre = "Matias";
  nombres[0] = "Candela";
  nombres[1] = "Martina";
  nombres[2] = "Victoria";
  nombres[3] = "Juan";
  nombres[4] = "Maria";
}

void draw(){
  println( nombre );
  println();
  println( nombres[2] );  //la posicion 2 del array 'nombres'
  println();
  println( nombres );
  println();
  println( nombres[0] );
  println( nombres[1] );
  println( nombres[2] );
  println( nombres[3] );
  println( nombres[4] );  //mala manera de no-recorrer un arreglo
  println();
  for( int i = 0 ; i < 5 ; i++ ){
    println( i + ": " + nombres[i] );  // i = indice ~ posicion
  }
  
  noLoop();  //frena el ciclo draw
}
