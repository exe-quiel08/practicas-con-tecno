void setup() {
  size(500, 500);
  textSize(22);
}
void draw() {
  background(0);
  stroke(255);
  line (100, 100, 220, 180); // dibujo la línea

  float distan= dist(100, 100, 220, 180); // con dist() calculamos distancia entre puntos

  text("con dist() = "+ distan, 200, 50);
  text("con Pitagoras = "+ Pitagoras(100, 100, 220, 180), 200, 100); // reemplaza valores de la función por valores concretos
}

/*Esta función es solo ejemplo de cómo Processing realiza y devuelve un cálculo
matemático. Obviamente no la van a usar nunca porque para eso tenemos dist(), que
hace exactamente lo mismo*/

float Pitagoras (float px1, float py1, float px2, float py2) {
  float resultado = sqrt(sq(px2-px1)+sq(py2-py1)); //calcula el Teorema según los valores que recibe
  return resultado;
}
