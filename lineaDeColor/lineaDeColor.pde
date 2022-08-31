int grueso = 1;
void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  strokeWeight(grueso);
  line(mouseX, mouseY, pmouseX, pmouseY);
  /*if (mousePressed) {
   grueso++;
   }*/
  println(key);
  println(keyCode);
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
    stroke(255, 0, 0);
  }
  if (key == 'v' || key == 'V') {
    stroke(0, 255, 0);
  }
  if (keyCode==ENTER) {
    background(255);
    stroke(0);
    grueso = 1;
  }
  // completar el azul
}
void mousePressed() {
  grueso++;
}
