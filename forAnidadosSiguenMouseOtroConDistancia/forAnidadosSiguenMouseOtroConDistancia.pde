int cant = 6;
int tam;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  tam = width/cant; // <<<<< ----- ATENCIÓN A ESTO
/*si van a modificar la cantidad con el programa corriendo la cuenta que calcula la relación de tamaño tiene que ser actualizada también en el draw */

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
          float distan = dist(mouseX, mouseY, i*tam+tam/2, j*tam+tam/2 );
          float distMax = dist(0, 0, width, height);
          float alpha = map(distan, 0, distMax, 255, 50 );
          fill(verde, verde, 0, alpha);
          ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
        }
      }
    }
  }
}
void mousePressed() {
  cant++; // con cada click aumentamos la cantidad de filas y columnas
}
void keyPressed() {
  cant = 6; // reiniciamos cantidad original
}
