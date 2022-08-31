int pos;
int tam = 100;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);

  float distan = dist(mouseX, mouseY, width/2, height/2);
  if (distan<tam/2) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  ellipse(width/2, height/2, tam, tam);
  println(distan);
}
