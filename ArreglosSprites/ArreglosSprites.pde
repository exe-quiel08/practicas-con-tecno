
//creo y dimensiono mi arreglo
PImage[] mb = new PImage[3];
int c = 0;

void setup(){
  size(500,500);
  //fullScreen();  //reemplaza el size
  imageMode( CENTER );
  
  for( int i = 0 ; i < mb.length ; i++ ){
    mb[i] = loadImage( "mb0"+i+".png" );
  }
  
}

void draw(){
  background( 255 );
  image( mb[c], width/2, height/2 );
  
}

void keyPressed(){
  c++;
  if( c == mb.length )
    c = 0;
}
