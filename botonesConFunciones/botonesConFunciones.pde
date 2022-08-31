/* este ejemplo la figura cambia de posición por cada vez que se presiona
 un botón.
 Completar el movimiento vertical posy;
 */

int posx, posy;
color relleno;

void setup() {
  size(500, 500);
  posx= width/2;
  posy = height/2;
  relleno = color(255, 0, 0);
}
void draw() {
  background(255);
  println(sobreBoton(50, height-100, 100, 50));
  boton(50, 50, 100, 50); // ubico cada boton segun la posición deseada
  boton(width-150, 50, 100, 50); 
  boton(width-150, height-100, 100, 50);
  boton(50, height-100, 100, 50);
  boton(width/2, height-100, 100, 50); // << ajustar ubicación
  
  fill(255, 0, 0);
  ellipse(posx, posy, 100, 100);
}
void mousePressed() {
  if (sobreBoton(50, 50, 100, 50)) {
    posx += 10;
  }
  if (sobreBoton(width-150, 50, 100, 50)) {
    posx -= 10;
  }
}

void boton(int pxb, int pyb, int ancho, int alto) { /* dibuja un botón e incluye la opción de detectar el "Over" tomando otra función */
  if (sobreBoton(pxb, pyb, ancho, alto)==true) { // si estoy sobre el botón utiliza un color
    fill(0, 255, 255);
  } else { // sino, usa otro
    fill(0, 0, 255);
  }
  rect(pxb, pyb, ancho, alto);
}

boolean sobreBoton(int px, int py, int ancho, int alto) { /* esta función solo detecta si estoy sobre una zona (en este caso, un botón) */
  boolean estoySobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoySobre;
}
