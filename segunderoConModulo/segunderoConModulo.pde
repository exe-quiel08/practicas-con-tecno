int px, cuenta;
int segundos; // agregué esto para contar los segundos
void setup() {
  size(500, 500);
  textSize(25);
  px = 25;
}
void draw() {
  background(255);

  fill(0, 0, 255);
  ellipse(px, 200, 50, 50);

  if (frameCount%60==0) { // cade 60 frames
    px+= 10; // aumenta 10
    segundos++; // aumenta uno
  }

  if (segundos > 6) { // esto es equivalente a 6 segundos
    px = 25; // reubico la figura
    segundos = 0; // reinicio el segundero
  }

  fill(255, 0, 0);
  text(segundos + " segundos", 50, 50);
}
