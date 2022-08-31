/*Adaptación de un trabajo entregado para el tp0
cambiando los circulos dibujados uno x uno con un ciclo for*/
void setup() {
  size(600, 600);
  background(333, 66, 0);
}

void draw() {
  fill(333, 66, 0);
  for (int c = 600; c>200; c-=10) {
    ellipse(300, 300, c, c);
  }
  ellipse(300, 300, 400, 200);
  fill(50, 200, 230);
  ellipse(300, 300, 200, 200);
  fill(120, 5, 150);
  ellipse(300, 300, 100, 200);
  fill(0);
  ellipse(300, 300, 100, 100);
}
