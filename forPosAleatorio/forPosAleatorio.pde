int cant = 5;
void setup() {
  size(500, 500);
  background(0);
  frameRate(2);
  cursor(CROSS);
}
void draw() {

  for (int i=0; i<cant; i ++) {
    rect(random(width), random(height), 50, 50);
  }
}
void mousePressed() {
  background(0);
  if (cant>1) {
    cant--;
  }
}
