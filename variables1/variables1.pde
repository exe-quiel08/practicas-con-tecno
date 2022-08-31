
int posx; // declaraciòn de la variable
int tam;
void setup() {
  size(800, 500);
  tam = width/10;
  posx = tam/2; // asignaciòn
  frameRate(1);

  background(255, 255, 0);
}
void draw() {

  // width = ancho de la pantalla
  // height =altura de la pantalla
  fill(255, 0, 255);
  ellipse(posx, height/2, tam, tam);
  posx = posx +tam;
  println(posx);
}
