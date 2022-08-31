// Bugiolachi, Josè
// Tp0 figuras
void setup() {
  size(500, 500);
}

void draw() {   
  ellipse(  200, 300, 100, 100);
  //ellipse(mouseX, mouseY, 100, 50);
  println("el mouse està en "  + mouseX + " fuaaaaa");
  strokeWeight(5);
  point(mouseX, mouseY);
  
}
