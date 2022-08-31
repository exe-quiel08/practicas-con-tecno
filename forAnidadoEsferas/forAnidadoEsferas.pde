int cant = 6;
int tam;
void setup() {
  size(600, 600);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      // rect(i*tam, j*tam, tam, tam);
      //ellipse(i*tam, j*tam, tam, tam);
      for (int c =tam; c>0; c-=1) {
        rectMode(CENTER);
        noStroke();
        float verde = map(c, tam, 0, 40, 255 );
        fill(0, verde, verde);
        ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
        //rect(i*tam+tam/2, j*tam+tam/2, c, c);
      }
    }
  }
}
