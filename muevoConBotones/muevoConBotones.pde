
int px, py;

void setup() {
  size(500, 500);
  px = width/2;
  py = height/2;
}
void draw() {
  background(255);
  fill(100);
  rect(0, 0, 100, 50);
  rect(width-100, 0, 100, 50);
  fill(255, 0, 0);
  ellipse(px, py, 100, 100);
}
void mousePressed() {
  if (mouseX>0 && mouseX<100 && mouseY > 0 && mouseY< 50) {
    px -= 10;
  }
  if (mouseX>width-100 && mouseX<width && mouseY < 50) {
    px += 10;
  }
}
