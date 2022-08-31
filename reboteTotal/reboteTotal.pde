float px, py, dx, dy;
int tam = 50;
void setup() {
  size(500, 500);
  px = width/2;
  py = height/2;
  dx = random(-3, 3);
  dy = random(-3, 3);
}
void draw() {
  background(0);
  if (px>= width-tam/2 || px<= tam/2 ) {
    dx = dx*-1;
  }
  if (py>= height-tam/2 || py<= tam/2 ) {
    dy *= -1;
  }

  ellipse(px, py, tam, tam);
  px += dx;
  py += dy;
}
