String [] textos = {"Titulo del juego", "Instrucciones \n \n Presione Enter", 
  "Estamos jugando", "Ganaste", "Game Over"};
int estado;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  // String texto, int px, int py, int tamText <<< parámetros de la funcion
  if (estado==0) {
    pantallas(textos[0], width/2, height/2, 50 );
  } else if (estado==1) {
    pantallas("Algo a mano", width/2, 200, 40 );
  } else if (estado==2) {
    pantallas(textos[2], 200, 100, 50 );
  } else if (estado==3) {
    pantallas(textos[3], 300, 400, 60 );
  } else if (estado==4) {
    pantallas(textos[4], width/2, height/2, 50 );
  }
}
void mousePressed() {
  estado ++;
}
void pantallas(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(255, 0, 0);
  text(texto, px, py);
}
