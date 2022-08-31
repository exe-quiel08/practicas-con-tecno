void setup() {
  size(500, 500);
}
void draw() {
  background(150);
  
  //triangulos
  fill(100);
  triangle(0, 0, 0, height/2, width/2, 0);
  triangle(width, 0, width/2, 0, width, height/2);
  triangle(0, height, 0, height/2, width/2, height);
  triangle(width, height, width/2, height, width, height/2);
  fill(200);
  //rectangulo
  rect(width/4,height/4,250,250);
  fill(250);
  //cuadrilatero
  quad(width/2,height/4,width/4,height/2,width/2,375,375,height/2);

  stroke(0);
  //line vertical y horizontal
  line(0, height/2, 500, height/2);
  line(width/2, 0, width/2, 500);

  //derecha - arriba
  line(width/2, 0, 240, height/2);
  line(width/2, 20, 220, height/2);
  line(width/2, 40, 200, height/2);
  line(width/2, 60, 180, height/2);
  line(width/2, 80, 160, height/2);
  line(width/2, 100, 140, height/2);
  line(width/2, 120, 120, height/2);
  line(width/2, 140, 100, height/2);
  line(width/2, 160, 80, height/2);
  line(width/2, 180, 60, height/2);
  line(width/2, 200, 40, height/2);
  line(width/2, 220, 20, height/2);
  line(width/2, 240, 0, height/2);

  //zquierda - arriba
  line(width/2, 0, 260, height/2);
  line(width/2, 20, 280, height/2);
  line(width/2, 40, 300, height/2);
  line(width/2, 60, 320, height/2);
  line(width/2, 80, 340, height/2);
  line(width/2, 100, 360, height/2);
  line(width/2, 120, 380, height/2);
  line(width/2, 140, 400, height/2);
  line(width/2, 160, 420, height/2);
  line(width/2, 180, 440, height/2);
  line(width/2, 200, 460, height/2);
  line(width/2, 220, 480, height/2);
  line(width/2, 240, 500, height/2);

  //derecha - abajo
  line(500, height/2, width/2, 260);
  line(480, height/2, width/2, 280);
  line(460, height/2, width/2, 300);
  line(440, height/2, width/2, 320);
  line(420, height/2, width/2, 340);
  line(400, height/2, width/2, 360);
  line(380, height/2, width/2, 380);
  line(360, height/2, width/2, 400);
  line(340, height/2, width/2, 420);
  line(320, height/2, width/2, 440);
  line(300, height/2, width/2, 460);
  line(280, height/2, width/2, 480);
  line(260, height/2, width/2, 500);

  //izquierda - abajo
  line(0, height/2, width/2, 260);
  line(20, height/2, width/2, 280);
  line(40, height/2, width/2, 300);
  line(60, height/2, width/2, 320);
  line(80, height/2, width/2, 340);
  line(100, height/2, width/2, 360);
  line(120, height/2, width/2, 380);
  line(140, height/2, width/2, 400);
  line(160, height/2, width/2, 420);
  line(180, height/2, width/2, 440);
  line(200, height/2, width/2, 460);
  line(220, height/2, width/2, 480);
  line(240, height/2, width/2, 500);  
}
