int tam;
int posX;
void setup() {
  size(500, 500);
  posX = - 500;
  tam = width;
}
void draw() {
  background(0);
  rectMode(CENTER);
  fill(mouseX, 0, 0); 
  /* el valor de rojo está determinado por la posición del mouse en X
   Eso hay que ajustarlo ya que podrìa generar un valor superior al 
   máximo color posible (255)*/
  rect(width/2, height/2, tam, tam);

  tam = tam -1;
  //tam += 1;
  //tam ++;
  println(tam);
  ellipse(posX, 100, 50, 50);
  posX++;
}
