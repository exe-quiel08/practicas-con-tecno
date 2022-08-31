int cant;
int tam;
void setup() {
  size(600, 600);
  cant = 10;
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float tono = map(i+j, 0, cant+cant, 0, 255);
      fill(255, 0, 255, tono);
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
