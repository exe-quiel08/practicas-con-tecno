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
        
        /*usamos la función constrain para ponerle límites a una variable entre un valor minimo y uno máximo.
        En este caso, limitamos el reconocimiento del mouse a los límites de ubicación y ancho de cada casilla. Cuando el mouse sale de una casilla
        se calcula la posición de la nueva casilla según el valor de i*tam */

        float limiteX = constrain(mouseX, i*tam, i*tam+tam);
        float limiteY = constrain(mouseY, j*tam, j*tam+tam);
        float ubicX = map(c, tam, 0, i*tam+tam/2, limiteX);
        float ubicY = map(c, tam, 0, j*tam+tam/2, limiteY);
        noStroke();
        float verde = map(c, tam, 0, 40, 255 );
        fill(verde, verde, 0);
        rect(ubicX, ubicY, c, c);
      }
    }
  }
}
