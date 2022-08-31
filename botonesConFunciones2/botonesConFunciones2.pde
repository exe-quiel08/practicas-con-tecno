/* este ejemplo los botones superiores indican una dirección
que no se modifica hasta no presionar otro.
Completar el movimiento vertical posy;
*/

int posx, posy;
color relleno;
boolean derecha;

void setup() {
  size(500, 500);
  posx= width/2;
  posy = height/2;
  relleno = color(255, 0, 0);
  derecha = true;
}
void draw() {
  background(255);
  println(sobreBoton(50, height-100, 100, 50));
  boton(50, 50, 100, 50);
  boton(width-150, 50, 100, 50); 
  boton(width-150, height-100, 100, 50);
  boton(50, height-100, 100, 50);
  boton(width/2, height-100, 100, 50);
  fill(relleno);

  ellipse(posx, posy, 100, 100);
  if (derecha) {
    posx++;
  } else {
    posx --;
  }
}
void mousePressed() {
  if (sobreBoton(50, 50, 100, 50)) {
    relleno = color(255, 255, 0);
    derecha = true;
  }
  if (sobreBoton(width-150, 50, 100, 50)) {
    relleno = color(0, 255, 0);
    derecha = false;
  }
}

void boton(int pxb, int pyb, int ancho, int alto) {
  if (sobreBoton(pxb, pyb, ancho, alto)==true) {
    fill(0, 255, 255);
  } else {
    fill(0, 0, 255);
  }
  rect(pxb, pyb, ancho, alto);
}

boolean sobreBoton(int px, int py, int ancho, int alto) {
  boolean estoySobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoySobre;
}
