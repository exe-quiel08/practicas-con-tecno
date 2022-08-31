PFont miFuente;
int posx1, posx2;

void setup() {
  size(500, 500);
  miFuente = loadFont("tipo.vlw");
  posx1 = - width/2;
  posx2 = width+width/2;
  textFont(miFuente, 25);
}
void draw() {
  background(0);
  textAlign(CENTER);
  textSize(25);
  fill(random(126, 255));
  text("Esto es la comisiòn 1  !!!!", posx1, 200);
  textSize(30);
  fill(random(255), random(255), random(255));
  text("De los madrugadores!!", posx2, 300);
  posx1 += 2;
  posx2 -= 2;
}
