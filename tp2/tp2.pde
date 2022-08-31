//Vidal, Ezequiel
//tp2 Ilusión óptica Interactiva
int cant = 50;//cantidad de cuadrados que quiero que se repita
float px, py, dx, dy; //posicion y direccion de la ilusión
int dir = 20; //velocidad de la direccion
boolean movimiento;//creo un boolean para que al darle click empiece al centro comience a moverse
void setup() {
  size(600, 600);

  px = width/2;
  py = height/2;
  dx = random(-0.2, 0.2);
  dy = random(-0.2, 0.2);
  movimiento = false;
}
void draw() {
  background(0);
  rectMode(CENTER);
  for (int x=0; x<cant; x++) {
    float tam = map(x, 0, cant-1, width*1.5, 20);
    float posx = map(x, 0, cant-1, width/2, px  );
    float posy = map(x, 0, cant-1, height/2, py  );

    if (px>= width-dir/2 || px<= dir/2 ) {
      dx = dx*-1;
    }
    if (py>= height-dir/2 || py<= dir/2 ) {
      dy *= -1;
    }
    if (x%2==0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(posx, posy, tam, tam);
    if (movimiento == true) {
      px += dx;
      py += dy;
    }
  }
}
void mousePressed() {
  float distancia = dist(mouseX, mouseY, px, py);
  if (distancia <= dir/2) {
    movimiento = !movimiento;
  }
}
void keyPressed() {
  if ( key == 'r' || key=='R' ) {  //cuando presiono 'r' o 'R' reinicio el programa
    reiniciar();
  }
}
void reiniciar() {
  px = width/2;
  py = height/2;
  dx = random(-0.2, 0.2);
  dy = random(-0.2, 0.2);
  movimiento = false;
}
