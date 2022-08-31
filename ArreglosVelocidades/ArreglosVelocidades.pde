
// c

float[] vel = new float[5];  //velocidad
float[] x =  new float[5];   //posicion

void setup(){
  size( 800, 500 );
  
  for( int i = 0 ; i < vel.length ; i++ ){
    vel[i] = random( 1, 3 );
    println( vel[i] );
    x[i] = 50;
    println( x[i] );    
  }

}

void draw(){
  background( 100 );
  
  for( int n = 0 ; n < 5 ; n++ ){
    //actualizo posición x sumando velocidad
    x[n] += vel[n];
    //dibujo los cinco autos
    rect( x[n], n * 70 + 80, 100, 50 );
    //imprimo el valor de vel correspondiente
    text( vel[n], x[n], n * 70 + 80 );
  }

}
