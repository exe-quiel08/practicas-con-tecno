boolean rojo = true;
void setup() {
  size(600, 600);
}
void draw() {
  for (int c= width; c>0; c-=30) {
    if (rojo) {
      fill(255, 0, 0);
    } else {
      fill(0);
    }
    ellipse(width/2, height/2, c, c);
    rojo = !rojo;
  }
}
