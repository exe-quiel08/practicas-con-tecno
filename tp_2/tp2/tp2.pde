//Vidal, Ezequiel
//tp2 Ilusión óptica Interactiva
int cant;
int tam;
float px, py, dx, dy;
void setup() {
  size(600, 600);
  cant = 20;
  tam = width/cant;

  rectMode(CENTER);

  px = width/2;
  py = height/2;
  dx = random(-0.1, 0.1);
  dy = random(-0.1, 0.1);
}
void draw() {
  background(0);
  for (int c= 0; c<cant; c++) {
    for (int j= 0; j<cant; j++) {
      float tono = map(c+j, 0, cant+cant, 0, 255);
      fill(0, 100, 200, tono);
      float dist = dist(px, py, c*tam+tam/cant, j*tam+tam/cant);
      float distMax = dist(0, 0, width, height);
      float ancho = map(dist, 0, distMax, tam*2, tam/10 );
      if (px>= width-cant/2 || px<= cant/2 ) {
        dx = dx*-1;
      }
      if (py>= height-cant/2 || py<= cant/2 ) {
        dy *= -1;
      }
      rect(c*tam+tam/2, j*tam+tam/2, ancho/2, ancho/2);
      px += dx;
      py += dy;
    }
  }
}
void keyPressed(){
  if ( key == ' ' || key==' ' ) { 
    setup();
  }
}
