int px;

void setup() {
  size(500, 500);
  // tint(); // investigar tint
  //delay(2000); // demora el programa 2 segundos
}
void draw() {
  background(0);
  float tono = px*255/(width-50); // regla de tres (ajusté el límite al borde menos la 1/2 de la figura)
  fill(255, 0, 0, tono);
  ellipse(px, 200, 100, 100);
  if (frameCount%30==0) { // dos veces por segundo
    px+= 10; // aumenta 10
  }

  if (px>width-50) {
    px = 50;
    delay(2000); // <<<<<------   prueben descomentar esto
  }

  textSize(25);
  fill(255, 0, 0);
  text("tono "+ tono, 350, 50);
  text(frameCount, 350, 100);
}
