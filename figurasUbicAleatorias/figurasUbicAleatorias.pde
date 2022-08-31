int cantidad = 1000;
void setup() {
  size(500, 500);
  
}
void draw() {
  background(0);

  for (int i=0; i<cantidad; i++) {
    float x = random(width);
    float y = random(height);
    rect(x, y, 5, 5);
    //rect(random(width), random(height), 5, 5); // otra manera de escribir lo mismo
  }
  println(frameRate);
}
