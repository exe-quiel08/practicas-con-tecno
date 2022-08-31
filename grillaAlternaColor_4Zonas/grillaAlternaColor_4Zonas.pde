/*Este programa es una adaptación de la función para detectar superficies
(celdas, botones, etc) donde dividimos la pantalla en cuatro zonas y ubicamos
diferentes figuras para cada condición*/
int cantCols, cantFilas; // variable para cantidad de columnas y de filas
int tam, ancho, alto;

void setup() {
  size(800, 600);
  cantCols = 20;
  cantFilas = 20;
  ancho = width/cantCols;
  alto = height/cantFilas;
}
void draw() {
  background(0);

  for (int i=0; i<cantCols; i++) {
    for (int j=0; j<cantFilas; j++) {

      if (sobreCelda(i*ancho, j*alto, ancho, alto)&& i<cantCols/2 && j<cantFilas/2) { // arriba izquierda
        fill(0, 255, 0);
        triangle(i*ancho, j*alto+alto, i*ancho+ancho/2, j*alto, i*ancho+ancho, j*alto+alto);
      } else if (sobreCelda(i*ancho, j*alto, ancho, alto)&& i>=cantCols/2 && j<=cantFilas/2) { // arriba derecha
        fill(255, 255, 0);
        ellipse(i*ancho+ancho/2, j*alto+alto/2, ancho, alto);
      } else if (sobreCelda(i*ancho, j*alto, ancho, alto)&& i<cantCols/2 && j>=cantFilas/2) { // abajo izquierda
        fill(0, 255, 255);
        rect(i*ancho, j*alto, ancho, alto);
      } else if (sobreCelda(i*ancho, j*alto, ancho, alto)&& i>=cantCols/2 && j>cantFilas/2) { // abajo derecha
        stroke(255);
        strokeWeight(3);
        line(i*ancho, j*alto, i*ancho+ancho, j*alto+alto);
        line(i*ancho, j*alto+alto, i*ancho+ancho, j*alto);
      } else {
        stroke(255);
        strokeWeight(1);
        fill(100);
        rect(i*ancho, j*alto, ancho, alto);
      }
    }
  }
}

boolean sobreCelda(int x, int y, int ancho, int alto) {
  boolean estoySobre = mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto;
  return estoySobre;
}
