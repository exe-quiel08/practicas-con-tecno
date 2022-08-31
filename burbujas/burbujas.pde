int cant = 500;
float [] px = new float[cant];
float [] py = new float[cant];
float [] dy = new float[cant];
float [] tam = new float[cant];
float [] alpha = new float[cant];
float [] distan = new float[cant];
void setup() {
  size(800, 600);

  for (int i=0; i<cant; i++) {
    px[i] = random(width);
    py[i] = random(height);
    dy[i] = random(-3, -0.5);
    tam[i] = random(20, 40);
    // alpha no le damos valores iniciales porque actualiza en el draw
  }
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {

    distan[i] = dist(px[i], py[i], px[i], height);
    alpha[i] = map(distan[i], 0, height, 200, 10);
    tam[i] = map(distan[i], 0, height, 50, 20);
    fill(0, 255, 255, alpha[i]);

    if (py[i]<-tam[i]) {
      py[i] = height+tam[i]; // vuelve a ingresar
    }
    noStroke();
    ellipse(px[i], py[i], tam[i], tam[i]);

    py[i]+= dy[i];
  }
}
