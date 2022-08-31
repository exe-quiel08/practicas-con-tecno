int pos;
void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  background(0);
  ellipse(pos, 100, 50, 50);
  pos++;
}
void mousePressed() {
  loop();
}
