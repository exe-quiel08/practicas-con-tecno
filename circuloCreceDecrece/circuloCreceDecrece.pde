int tam;
boolean crece; // variable booleana para evaluar una condición
void setup() {
  size(640, 480);
  crece = true; // comienza en true
}
void draw() {
  background(100);
  ellipse(width/2, height/2, tam, tam);
  if (crece) { // si crece == true (verdadero)
    tam++; // aumenta el tamaño
  } else { // si NO es verdadero
    tam--; // el tamaño disminuye
  }
  if (tam>height || tam<0) { 

/* creamos las condiciones para cambiar el estado de crece 
fijando como límite de crecimiento la altura de la ventana y 0 como límite de disminución*/
    
  crece = !crece;
  }
}
