int cant;
int tam;

void setup() {
  size(500, 500);
  cant = 10;
  //tam = width/cant;
}
void draw() {
  background(0);
  tam = width/cant; // esta relación debe actualizarse cada vez que cambia cantidad
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (sobreCelda(i*tam, j*tam, tam, tam)) {
        fill(2, 255, 5);
      } else {
        fill(100);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
  // boton para aumentar cantidad 
  fill(255, 0, 0);
  rect(50, height-100, 100, 50);
  println(cant + " estoy sobre " + sobreCelda(50, height-100, 100, 50));
}
void mousePressed() {
  if (sobreCelda(50, height-100, 100, 50)) {
    cant++;
  }
}

boolean sobreCelda(int x, int y, int ancho, int alto) {
  boolean estoySobre = mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+tam;
  return estoySobre;
}
