int pos;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  marciano(200, 100, 50);
  marciano(300, 300, 100);
  marciano(pos, 300, 60);
  pos++;
  println(pos);
}

void marciano(int px, int py, int tam) {
  fill(40, 200, 200, 100);
  ellipse(px, py, tam, tam);
  fill(0, 200, 0);
  ellipse(px, py, tam/2, tam);
  fill(100);
  //triangle(100, 100, 300, 100, 200, 200);
  triangle(px-tam, py, px+tam, py, px, py+tam);
}
