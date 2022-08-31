int cant = 10;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if ((x+y)%2==0) {
        fill(255, 0, 0);
      } else {
        fill(100);
      }
      rect(x*tam, y*tam, tam, tam);
    }
  }
}
