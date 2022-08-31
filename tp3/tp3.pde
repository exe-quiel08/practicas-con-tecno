Juego J;
void setup() {
  size(800, 600);
  J = new Juego();
  J.botella();
  J.fondo();

}
void draw () {
  J.juego();
}

void keyPressed() {
  J.empezar();
  J.movimiento();

}
