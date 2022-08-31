void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  marciano();
  marciano2();
}

void marciano() {
  fill(40, 200, 200, 100);
  ellipse(200, 100, 100, 100);
  fill(0, 200, 0);
  ellipse(200, 100, 50, 100);
  fill(100);
  triangle(100, 100, 300, 100, 200, 200);
}

void marciano2() { // ASI NOOOOOOO
  fill(40, 200, 200, 100);
  ellipse(200+50, 100+50, 100, 100);
  fill(0, 200, 0);
  ellipse(200+50, 100+50, 50, 100);
  fill(100);
  triangle(100+50, 100+50, 300+50, 100+50, 200+50, 200+50);
}
