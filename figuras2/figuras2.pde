void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 50, 50);
  stroke(255, 0, 255);
  strokeWeight(3);
  fill(255, 0, 0);
  rect(100, 100, 300, 200);
  fill(0, 0, 255);
  triangle(100, 300, 250, 100, 400, 300);
  fill(0, 255, 0);
  quad(100, 100, 340, 100, 350, 450, 50, 450);
}
