PImage pantalla1, pantalla2, pantalla3;
int px, py, px1;
void setup() {
  size(640, 480);
  pantalla1 = loadImage("capitan1.jpg");
  pantalla2 = loadImage("capitan2.jpg");
  pantalla3 = loadImage("capitan3.jpg");

  px = width/2;
  py = height/2;
  px1 = width/2;

  imageMode(CENTER);
}
void draw() {
  background(0);
  image(pantalla1, px, py, width, height);
  px += 3;
  if (px>width*1.5) {
    image(pantalla2, px1, py, width, height);
    
  }
}
