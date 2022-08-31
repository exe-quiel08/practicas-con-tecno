void setup() {
  size(640, 480);
}
void draw() {
  background(255); 
  /*for (int l= 0; l<height; l++) {
   float tono = l*255/height;
   stroke(tono, 0, 0);
   line(0, l, width/2, l); // lineas degradado
   }*/
  //degradee(0, 0, 100, height);
  degradee(0, 0, 100, height);
  degradee(150, 100, 100, height);
  degradee(300, 200, 100, 100);
}
void degradee(int lx, int ly, int ancho, int alto) {
  for (int l=ly; l<ly+alto; l++) { // ajustamos el límite inferior
    float tono = l*255/alto; // esto hay que ajustarlo
    stroke(tono, 0, 0);
    line(lx, l, lx+ancho, l);
  }
}
