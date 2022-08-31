int cant = 5000;
void setup() {
  size(500, 500);
  background(0);
  for (int i=0; i<cant; i ++) {
    rect(random(width), random(height), 50, 50);
  }
  // 5000 figuras ubicadas aleatoriamente
}
void draw() {
}
