PFont miFuente;
int posx1, posx2;
float posy;

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
  text("Esto es la comisión 1  !!!!", posx1, 200);
  textSize(30);
  fill(random(255), random(255), random(255));
  posy = random(290, 300);
  text("De los madrugadores!!", posx2, posy);
  if (posx1> width+width/2) {
    posx1 = -width/2;
  }
  if (posx2<width/2) {
    posx2 = width*2;
  }
  posx1 += 2;
  posx2 -= 2;
}
