
int cant;
int tam;
void setup() {
  size(500, 500);
  cant = 11;
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float tono = map(i+j, 0, cant+cant, 0, 255);
      fill(2, 255, 5, tono);
      float distan = dist(mouseX, mouseY, i*tam+tam/2, j*tam+tam/2); 
      float distMax = dist(0, 0, width, height);
      float ancho = map(distan, 0, distMax, tam*2, tam/10 );
      ellipse(i*tam+tam/2, j*tam+tam/2, ancho, ancho);
    }
  }
}
