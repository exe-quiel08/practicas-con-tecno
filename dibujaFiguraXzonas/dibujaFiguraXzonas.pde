void setup() {
  size(640, 480);
  background(255);
  rectMode(CENTER);
}
void draw() {
  float px = random(width);
  float py = random(height);
  // ponemos cada condición a cumplir
  if (px<width/2 && py<height/2) {  // cuadrante SUPERIOR izquierdo
    fill(0, 0, 255);
    ellipse(px, py, 20, 20);
  } else if (px>width/2 && py<height/2) { // cuadrante SUPERIOR derecho
    fill(255, 0, 05);
    rect(px, py, 20, 20);
  } else if (px<width/2 && py>height/2) { // cuadrante INFERIOR izquierdo
    fill(255, 255, 0);
    ellipse(px, py, 10, 30);
    ellipse(px, py, 30, 10);
  } else {  // si no cumple NINGUNA de las tres anteriores...
    fill(0, 255, 0);
    rect(px, py, 10, 30);
    rect(px, py, 30, 10);
  }
  println(px);
}
