void setup() {
  size(400, 400);
}
void draw() {
  background(0); // fondo en escala de grises
  strokeWeight(1);
  stroke(200);
  line(200, 0, 200, 400); // linea vertical
  line(0, 200, 500, 200); // línea horizontal
  ellipse(100, 100, 100, 100);
  rect(250, 50, 100, 100);
  triangle(100, 250, 150, 350, 50, 350);
  quad(220, 230, 350, 250, 310, 330, 250, 350);
}
