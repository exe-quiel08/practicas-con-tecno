// INCLUIR EL NOMBRE DE LA ALUMNA/ALUMNO
// URL al video descriptivo en youtube

PImage miImagen;
PFont textos;
void setup() {
  size(800, 600); // tamaño de la ventana MAXIMO
  frameRate(20); // NO MODIFICAR EL frameRate!!!!!!
}

void draw() {
  background(255);

  textos = loadFont("lafuente.vlw"); // SE CARGA EN EL SETUP
  miImagen = loadImage("fondo.jpg");

  if (frameCount < 0 || frameCount >= 240) { 
    // acciones 1
    // .......
  }

  if (frameCount < 0 || frameCount >= 360) { // solapamiento de condiciones
    // acciones
    // .......


    if (frameCount >2400||frameCount >2400) {
      // acciones
      // .......
    }
    if (280<frameCount && frameCount<290) {
      // acciones
      // .......
    }
    if (290<frameCount && frameCount<300) {
      // acciones
      // .......
    }
  }
  // LOS CONDICIONALES SE ABREN/CIERRAN CON UNA LLAVE {}
}
