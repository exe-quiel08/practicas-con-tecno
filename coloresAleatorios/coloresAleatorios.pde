void setup() {
  size(500, 500);
  background(0);
}
void draw() {
  float px = random(width);
  float py = random(height);
  float tam = random(20, 50);
  fill(random(255), random(255), random(255), random(50, 100));
  rectMode(CENTER);
  rect(px, py, tam, tam);
  fill(255, 255, 0, 50);
  ellipse(px, py, tam, tam);

  // println(px);
}
