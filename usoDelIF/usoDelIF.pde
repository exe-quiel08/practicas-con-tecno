//Las condiciones son “x > 100” y “x < 100”
//Como el valor de x es 150
//se ejecutará el primer bloque IF
//y se “eliminará” lo que ocurre en el segundo
int x = 150;
if (x > 100){ //si es mayor que 100
ellipse(50, 50, 36, 36); //dibuja una elipse
}
if(x < 100){ //si es menor que 100
rect(35, 35, 30, 30); //dibuja un rectángulo
}
line(20, 20, 80, 80);
