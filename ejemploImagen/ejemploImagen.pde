
// Recordar que la imagen debe estar ubicada en la carpeta data.

PImage fondo; // declaro fondo como tipo de dato imagen
void setup() {
  size(500, 500);
  fondo = loadImage("desierto.jpg"); // cargo la imagen (revisar extensión archivo)
}
void draw() {
  background(0);

  image(fondo, 0, 0, width, height); // muestro la imagen
  
  /*Parámetros de la función image():
   image(nombre_archivo, posX, posY, ancho, alto);
   */
}
