int cant = 10;
int tam;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  tam = width/cant; // verifica en tiempo real la relación
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      float distan = dist(mouseX, mouseY, x*tam, y*tam); // calculamos distancia del mouse a cada cuadrado
      /*ahora hacemos una regla de 3 para promediar la distancia con el valor de opacidad que puede tener
      distan -------->>>>> de 0 a la diagonal máxima
      valor de tono --->>> de 0 a 255 (regla de 3, multiplico cruzado y luego divido)
      */
      float tono = distan*255/dist(width, height, 0, 0);
      fill(0, 255, 0, tono);
      rect(x*tam, y*tam, tam, tam);
    }
  }
}
void keyPressed() {
  cant = 10;
}
void mousePressed() {
  cant ++;
}
