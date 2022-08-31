int cant = 20;
int tam;
void setup() {
  size(800, 400);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int x=0; x<width; x= x + tam) {
    fill(255);
    rect(x, 0, tam, tam);
  }
  for (int x=0; x<cant; x++) {
    if (x%2==0) {
      fill(255, 0, 0);
    } else {
      fill(100);
    }
    rect(x*tam, 200, tam, tam);
  }
}
