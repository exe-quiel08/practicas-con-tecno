//reiniciar, random

float t, relleno;

void setup() {
  size( 400, 400 );
  noStroke();
  
  //valores iniciales -> valores para reiniciar
  t = 50;
  relleno = 0;
}


void draw() {
  background( 255 - relleno );

  if( frameCount % 60 == 0 )  //ejecuto cada un segundo: 60 frames
    t = random( 200 );
  
  fill( relleno );
  ellipse( width/2, height/2, t, t );
}

void keyPressed() {
  //t = random( 100 );
  relleno = random( 255 );   //cambio color con teclado
  
  if( key == 'r' ){  //CUANDO presiono 'r' REINICIO mis variables
    reiniciar();
  }
}

void reiniciar(){
  t = 50;
  relleno = 0;
}
