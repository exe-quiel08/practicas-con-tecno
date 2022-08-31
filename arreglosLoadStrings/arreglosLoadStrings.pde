
//cargar un arreglo desde archivo externo

String[] asistencia;  //lo declaro

void setup() {
  size( 400, 400 );
  textAlign( CENTER, CENTER );
  textSize( 24 );

  //levanto los datos de un archivo de texto; cada salto de linea es una posicion en el arreglo
  asistencia = loadStrings( "asistencia.txt" );

  for ( int n = 0; n < asistencia.length; n++ ) {
    println( "["+ n + "] " + asistencia[n] );
  }
}

void draw() {
  background( 0 );

  for ( int n = 0; n < asistencia.length; n++ ) {
    //text( "contenido", posX, posY );
    text( asistencia[n], width/2, (n * 30) + frameCount-height );
    // * permite el espaciado, + permite el desplazamiento, -height es un offset
  }

  //noLoop();
}





void reiniciar() {
  
}
