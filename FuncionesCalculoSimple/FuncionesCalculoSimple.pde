float a = 8;
float b = 6;
void setup() {
  size(500, 500);
  textSize(25);
}
void draw() {
  background(0);

  /*Las siguientes funciones realizan diferentes cálculos simples utilizando 
   las mismas variables*/

  text(suma(a, b), 50, 100); // función suma

  text(resta(a, b), 50, 150); // función resta

  text(promedio(a, b), 50, 200); // función promedio
}
void mousePressed() {
  a++;
}

float suma(float num1, float num2) {
  float resultadoSuma = num1+num2; /* resultadoSuma es una variable auxiliar que usamos para guardar el resultado de la operación */
  return resultadoSuma;
}

float resta(float num1, float num2) {
  float resultadoResta = num1-num2;
  return resultadoResta;
}

float promedio(float num1, float num2) {
  float resultado = suma(num1, num2)/2;
  return resultado;
}
