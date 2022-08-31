int cant = 7;
PImage [] caballo = new PImage[cant];
int pos;
int orden;
void setup() {
  size(500, 500);
  //caballo[0] = loadImage("horse0.png");
  //caballo[1] = loadImage("horse1.png");
  for (int i=0; i<cant; i++) {
    caballo[i] = loadImage("horse"+i+".png");
  }
}
void draw() {
  background(255);
  image(caballo[orden], pos, 200);
  if (frameCount%6==0) {
    if (orden<cant-1) {
      orden++;
    } else {
      orden = 0;
    }
  }
  pos++;
  pos = pos%width;
}
