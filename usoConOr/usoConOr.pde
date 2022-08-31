int a = 10;
int b = 20;
if((a > 5 ) || (b < 30)){ //Si a es mayor a 5 o b es menos 
//a 30 dibuja una
line(20, 50, 80, 50); //línea. Como ambas condiciones 
//se cumples, se 
} //dibuja la línea
if((a > 15) || (b < 30)){ //Si a es mayor a 15 o b es menor
//a 30, dibujar una
ellipse(50, 50, 36, 36);//elipse. Solo una de las 
//condiciones se cumplen, se 
} //dibuja la elipse
