float tono;
void setup() {
  size(600, 400);
}
void draw() {
  background(0);
  tono = map(mouseX, 0, width, 255, 50);
  float tam = map(mouseX, 0, width, 200, 50);
  /* la traducción de este función aquí sería:
  mientras el mouseX vaya de 0 a width, tam va de 200 a 50
  Esos son los extremos iniciales y finales. En el medio, la función 
  promedia los valores de ambas escalas)*/
  fill(tono, 0, 0);
  rect(mouseX, 0, tam, tam);
}
