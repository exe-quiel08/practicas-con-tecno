String titulo;
float marco;
void setup() {
  size(500, 400);
  textSize(25);
  textAlign(CENTER, CENTER);
  titulo = "El puente sobre el rìo Kwai";
  marco = textWidth(titulo);
}
void draw() {
  background(0);
  fill(40, 200, 200);
  rectMode(CENTER);
  rect(width/2, 100, marco+20, 50, 25);
  fill(255, 0, 0);

  text(titulo, width/2, 100);
}
