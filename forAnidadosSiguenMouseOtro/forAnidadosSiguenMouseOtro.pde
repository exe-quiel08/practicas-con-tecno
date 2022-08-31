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
      for (int c =tam; c>0; c-=15) {
        rectMode(CENTER);
        noStroke();
        float verde = map(c, tam, 0, 40, 255 );


        if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam&&mouseY<j*tam+tam) {
          fill(verde, 0, 0);
          rect(i*tam+tam/2, j*tam+tam/2, c, c);
        } else {
          fill(verde, verde, 0);
          ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
        }
      }
    }
  }
}
