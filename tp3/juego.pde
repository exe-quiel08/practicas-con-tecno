class Juego{
  PImage fondo;
  
  int cant = 16;
  int tam;
  int sep = 2;
  boolean [][] arriba = new boolean[cant][cant];
  boolean [][] abajo = new boolean[cant][cant];
  boolean [][] derecha = new boolean[cant][cant];
  boolean [][] izquierda = new boolean[cant][cant];
  
  boolean [][] botella = new boolean[cant][cant];
  
  int tiempo;
  
  String estado;
  
  int cantidad = 16;
  int tamaño;
  int px, py; // personaje
  
  Juego(){
   tiempo = 0;
   textAlign(CENTER);
   
   estado = "start";
  }
  
  void personaje(){
    tamaño = width/cantidad;
    stroke(0);
    fill(0);
    ellipse(px*tamaño+tamaño/2,py*tamaño+tamaño/2,tamaño/2,tamaño/2);
  }
  void botella(){
    for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
        botella[15][11] = true;
      }
    }
  }
  void dibujarBotella(){
    for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (botella[i][j]) {
        stroke(255,0,0);
        fill(255, 0, 0);
        ellipse(i*tam+tam/2, j*tam+tam/2, tam/2, tam/2);
      }
    }
    }
    if (botella[px][py]){
      botella[px][py] = false;
    }
  }
  void movimiento(){
    if (keyCode==UP  && arriba[px][py]==false) {
    py--;
  }
  if (keyCode==DOWN && !abajo[px][py] ) {
    py++;
  }
  if (keyCode==LEFT && izquierda[px][py]== false) {
    px--;
  }
  if (keyCode==RIGHT && !derecha[px][py]) {
    px++;
  }
 }
 void fondo(){
   fondo = loadImage("mapa.jpg");
   image(fondo, 0,0,width,height);
 }
 
 void juego(){
   
   
   if (estado.equals("start")){
     background(0);
  textSize(40);
  textAlign(CENTER);
    fill(255);
    text("Rapido \n Debes encontrar la salida \n Deberas cruzar por todo el laberinto \n tienes 30 segundos para hacerlo \n\n\n Presiona Espacio \n Para comenzar", width/2,100);
  }
  
   if (estado.equals("juego")) {
    if(frameCount%12==0){
    tiempo++; 
   }
    
    fondo();
    laberinto();
    dibujarBotella();
    personaje();
    
    fill(255);
    text(tiempo,width/2,50); //tiempo al jugar
    
    if(tiempo>=30 && estado.equals("juego") ){
     estado = "gameover";
     background(0);
    textSize(40);
  textAlign(CENTER);
    fill(255);
    text("Perdiste :( \n\n\n Presiona Enter \n Para volver a empezar", width/2,200);
   }else if(botella[15][11] == false){
     estado = "win";
     background(0);
    textSize(40);
  textAlign(CENTER);
    fill(255);
    text("Ganaste :D \n Sobreviviste a tiempo \n\n\n Presiona Enter \n Para volver a empezar", width/2,200);
   }
    
  }
  
 }
 void empezar(){
   if(keyCode== ' '){
    estado = "juego"; 
    tiempo = 0;
   }
   if(keyCode == ENTER){
    setup(); 
   }
 }
 void laberinto(){
  tam = width/cant;
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      stroke (128,64,0);
      strokeWeight(2);
      if(arriba[i][j]){
      line(i*tam+sep, j*tam+sep, i*tam+tam-sep, j*tam+sep); // linea arriba
      }
      if(abajo[i][j]){
      line(i*tam+sep, j*tam+tam-sep, i*tam+tam-sep, j*tam+tam-sep); // linea abajo
      }
      if(izquierda[i][j]){
      line(i*tam+sep, j*tam+sep, i*tam+sep, j*tam+tam-sep); // linea izquierda
      }
      if(derecha[i][j]){
      line(i*tam+tam-sep, j*tam+sep, i*tam+tam-sep, j*tam+tam-sep); // linea derecho
      }
    }
  }
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      arriba[i][0] = true;
      abajo [i][11] = true;
      derecha [15][j] = true;
      izquierda [0][j] = true;
    }
  }
  //LINEAS ARRIBA Y ABAJO
   for(int i=1; i<cant-8; i++){
      arriba[i][1] = true;
      abajo [i][0] = true;
   }
  for(int i=5; i<cant-7; i++){
    arriba[i][2] = true;
    abajo [i][1] = true;
  }
    for(int i=0; i<cant-13; i++){
      arriba[i][2] = true;
    abajo [i][1] = true;
  }
  for(int i=10; i<cant-1; i++){
  arriba[i][1] = true;
  abajo[i][0] = true;
  }
  arriba[12][2] = true;
  arriba[13][2] = true;
  abajo[12][1] = true;
  abajo[13][1] = true;
  
  for(int i=0; i<cant-12; i++){
  arriba[i][7] = true;
  abajo[i][6] = true;
  }
  
  arriba[3][5] = true;
  arriba[4][5] = true;
  abajo[3][4] = true;
  abajo[4][4] = true;
  
  arriba[4][8]= true;
  abajo[4][7]=true;
  
  arriba[2][9]= true;
  abajo[2][8]=true;
  
  for(int i=1; i<cant-10; i++){
  arriba[i][11] = true;
  abajo[i][10] = true;
  }
  for(int i=4; i<cant-8; i++){
  arriba[i][10] = true;
  abajo[i][9] = true;
  }
  arriba[2][10] = true;
  abajo[2][9] = true;
  arriba[3][10] = true;
  abajo[3][9] = true;
  
  arriba[1][8] = true;
  abajo[1][7] = true;
  arriba[2][8] = true;
  abajo[2][7] = true;
  
  arriba[5][9] = true;
  abajo[5][8] = true;
  arriba[6][9] = true;
  abajo[6][8] = true;
 
  arriba[7][8] = true;
  abajo[7][7] = true;
  
  arriba[6][7] = true;
  abajo[6][6] = true;
  
  for(int i=1; i<cant-13; i++){
  arriba[i][3] = true;
  abajo[i][2] = true;
  arriba[i][5] = true;
  abajo[i][4] = true;
  }
  
  for(int i=0; i<cant-14; i++){
  arriba[i][4] = true;
  abajo[i][3] = true;
  arriba[i][6] = true;
  abajo[i][5] = true;
  }
  
  for(int i=7; i<cant-5; i++){
  arriba[i][3] = true;
  abajo[i][2] = true;
  }
  
  for(int i=9; i<cant-4; i++){
  arriba[i][4] = true;
  abajo[i][3] = true;
  }
  arriba[6][4] = true;
  abajo[6][3] = true;
  arriba[7][4] = true;
  abajo[7][3] = true;
  
  arriba[7][5] = true;
  abajo[7][4] = true;
  arriba[8][5] = true;
  abajo[8][4] = true;
  
  for(int i=8; i<cant-3; i++){
  arriba[i][7] = true;
  abajo[i][6] = true;
  }
  
  for(int i=7; i<cant-6; i++){
  arriba[i][6] = true;
  abajo[i][5] = true;
  }
  
  for(int i=12; i<cant; i++){
  arriba[i][5] = true;
  abajo[i][4] = true;
  }
  
  for(int i=12; i<cant; i++){
  arriba[i][6] = true;
  abajo[i][5] = true;
  }
  
  arriba[13][8] = true;
  arriba[14][8] = true;
  abajo[13][7]=true;
  abajo[14][7]=true;
  
  arriba[15][9] = true;
  abajo[15][8]=true;
  
  arriba[13][9] = true;
  abajo[13][8]=true;
  arriba[12][9] = true;
  abajo[12][8]=true;
  
  arriba[14][10] = true;
  abajo[14][9]=true;
  arriba[13][10] = true;
  abajo[13][9]=true;
  arriba[12][10] = true;
  abajo[12][9]=true;
  
  arriba[15][11] = true;
  abajo[15][10]=true;
  arriba[13][11] = true;
  abajo[13][10]=true;
  arriba[12][11] = true;
  abajo[12][10]=true;
  
  arriba[15][2]=true;
  abajo[15][1]=true;
  arriba[15][4]=true;
  abajo[15][3]=true;
  
  arriba[14][3]=true;
  abajo[14][2]=true;
 
  //LINEAS DERECHA E IZQUIERDA
  for(int j=1; j<cant-12; j++){
  derecha [3][j] = true;
  izquierda [4][j] = true;
  }
  for(int j=3; j<cant-10; j++){
  derecha [2][j] = true;
  izquierda [3][j] = true;
  }
  
  derecha [3][6] = true;
  izquierda [4][6] = true;
  
  for(int j=5; j<cant-8; j++){
  derecha [4][j] = true;
  izquierda [5][j] = true;
  }

  
  derecha [4][2] = true;
  derecha [4][3] = true;
  izquierda [5][2] = true;
  izquierda [5][3] = true;
  
  derecha [8][1] = true;
  izquierda [9][1] = true;
  
  for(int j=0; j<cant-13; j++){
  derecha [9][j] = true;
  izquierda [10][j] = true;
  }
  
  derecha [3][8] = true;
  izquierda [4][8] = true;
  derecha [3][9] = true;
  izquierda [4][9] = true;
  
  derecha [1][9] = true;
  izquierda [2][9] = true;
  
  for(int j=8; j<cant-5; j++){
  derecha [0][j] = true;
  izquierda [1][j] = true;
  }
  
  derecha[10][2]=true;
  izquierda[11][2]= true;
  
  for(int j=2; j<cant-11; j++){
  derecha [11][j] = true;
  izquierda [12][j] = true;
  }
  
  derecha [5][10] = true;
  izquierda [6][10] = true;
  
  derecha [6][11] = true;
  izquierda [7][11] = true;
  
  for(int j=7; j<cant-5; j++){
  derecha [7][j] = true;
  izquierda [8][j] = true;
  }
  
  for(int j=2; j<cant-7; j++){
  derecha [5][j] = true;
  izquierda [6][j] = true;
  }
  
  derecha [6][5] = true;
  izquierda [7][5] = true;
  
  derecha [9][4] = true;
  izquierda [10][4] = true;
  derecha [9][5] = true;
  izquierda [10][5] = true;
  
  derecha [10][5] = true;
  izquierda [11][5] = true;
  derecha [10][6] = true;
  izquierda [11][6] = true;
  
  derecha [13][6] = true;
  izquierda [14][6] = true;
  
  derecha [12][7] = true;
  izquierda [13][7] = true;
  
  derecha [14][7] = true;
  izquierda [15][7] = true;
  derecha [14][8] = true;
  izquierda [15][8] = true;
  
  derecha [11][8] = true;
  izquierda [12][8] = true;
  
  derecha [13][9] = true;
  izquierda [14][9] = true;
  derecha [13][11] = true;
  izquierda [14][11] = true;
  
  derecha [14][10] = true;
  izquierda [15][10] = true;
  
  for(int j=8; j<cant; j++){
  derecha [8][j] = true;
  izquierda [9][j] = true;
  }
  
  for(int j=7; j<cant-6; j++){
  derecha [9][j] = true;
  izquierda [10][j] = true;
  derecha [9][11] = true;
  izquierda [10][11] = true;
  
  }
  
  for(int j=9; j<cant; j++){
  derecha [10][j] = true;
  izquierda [11][j] = true;
  derecha [10][7] = true;
  izquierda [11][7] = true;
  }
  
  derecha [12][2] = true;
  izquierda [13][2] = true;
  derecha [12][3] = true;
  izquierda [13][3] = true;
  
  derecha [14][2] = true;
  izquierda [15][2] = true;
  
  derecha [13][3] = true;
  izquierda [14][3] = true; 
  }
 }
