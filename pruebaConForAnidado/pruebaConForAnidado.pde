void setup() {
  size(500, 500);
}
void draw() {
  background(125);
  //noStroke();
  for (int y = 0; y < width; y += 10) {
    for (int x = 0; x < height; x += 10) {
      fill((x+y)/4);
      rect(x, y, width, height);
    }
  }
}
