int cant = 10;
int tam;
boolean cambia;
void setup() {
  size(640, 480);
  tam = width/cant;
}
void draw() {
  background(255);  
  //degradee(0, 0, 100, height);
  //degradee(150, 200, 100, height/2);

  for (int i=0; i<cant; i++) {
    degradee(i*tam, 0, tam, height, cambia);
    cambia = !cambia;
  }
}
void degradee(int lx, int ly, int ancho, int alto, boolean oscuro) {
  for (int l=ly; l<ly+alto; l++) { // ajustamos el límite inferior
   // float tono = l*255/alto; // con regla de 3 simple
    float tono = map(l, 0, alto, 0, 255); // CON MAP() !!!!
    if (oscuro) {
      stroke(tono, 0, 0);
    } else {
      stroke(255-tono, 0, 0);
    }
    line(lx, l, lx+ancho, l);
  }
}
