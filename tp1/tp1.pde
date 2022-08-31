//Vidal Ezequiel legajo 88363/2
//tp1 Animando con Código
//import processing.sound.*;

//SoundFile musica;

PImage pantalla1, pantalla2, pantalla3;
int escala, px, px1, py, py1, py2, p;
PFont fuente;
String director, ayudantes, artistica, produccion, basado, creditos;
void setup() {
  size(640, 480);
  textSize(50);
  pantalla1 = loadImage("pantalla1.jpg");
  pantalla2 = loadImage("pantalla2.jpg");
  pantalla3 = loadImage("pantalla3.jpg");
  fuente = loadFont("fuente.vlw");

  director = "Director \n MICHAEL BAY";
  ayudantes = "Ayudantes \n BRIAN F. RELYEA \n FREDERICK A. USHER III \n SIMON WARNOCK";
  artistica = "Artistica \n FRANÇOIS AUDOUY \n BEAT FRUTIGER \n SEAN HAWORTH \n KEVIN KAVANAUGH";
  produccion = "Producción \n TOM DESANTO \n DON MURPHY \n LORENZO DI BONAVENTURA \n IAN BRYCE \n STEVEN SPIELBERG";
  basado = "Basada en \n TRANSFORMERS de HASBRO";
  creditos = "Diseño de producción \n Jeff Mann \n\n Guión \n Roberto Orci \n Alex Kurtzman \n\n Historia \n Roberto Orci \n Alex Kurtzman \n John Rogers \n\n Música \n Steve Jablonsky \n\n Sonido \n Erik Adahl \n\n Maquillaje \n Robin Beauchesne \n\n Fotografía \n Mitchell Amundsen \n\n Montaje \n Paul Rubell \n Glen Scantlebury \n Tom Muldoon \n\n Escenografía \n Rosemary Brandenburg \n Larry Dias \n\n Vestuario \n Deborah L. Scott \n\n Efectos especiales \n David J. Barker \n\n Protagonistas \n Shia LaBeouf \n Tyrese Gibson \n Josh Duhamel \n Anthony Anderson \n Megan Fox \n Rachael Taylor \n Kevin Dunn \n Julie White \n Michael O'Neill \n John Turturro \n Jon Voight \n\n\n\n\n\n\n\n\n\n\n\n Pongame un 100 profe! :D \n\n y \n\n disfrute de la música :)";

  escala = 680;

  py = 0;
  py1 = height;
  py2 = height;
  px = 0;
  px1 = width;

 // musica = new SoundFile(this, "musica1.mp3");

//  musica.play();
}
void draw() {
  background(0);

  textAlign(CENTER);
  textFont(fuente);

  image(pantalla1, 0, py, width, height);
  py = py-2;
  if (py<=0) {
    image(pantalla2, 0, py1, width, height);
    py1 = py1-2;
  }
  if (py1<=0) {
    image(pantalla2, px, 0, width, height);
    px = px-2;
    image(pantalla3, px1, 0, width, height);
    px1 = px1 - 2;
  }
  if (px1<=0) {
    image(pantalla3, 0, 0, width, height);

    float tono = map(p, 0, width, 0, 255 );

    fill(0, 0, 0, tono);
    rect(0, 0, width, height);
    p = p+10;
  }
  if (p>=escala) {
    fill(255);
    text(director, width/2, height/2);
  }
  if (p>=escala*2) {
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    text(ayudantes, width/2, height/3);
  }
  if (p>=escala*3) {
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    text(artistica, width/2, height/3);
  }
  if (p>=escala*4) {
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    text(produccion, width/2, height/4);
  }
  if (p>=escala*5) {
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    text(basado, width/2, height/2);
  }
  if (p>=escala*6) {
    fill(0);
    rect(0, 0, width, height);
    textSize(25);
    fill(255);
    text(creditos, width/2, py2);
    py2--;
  }
}
