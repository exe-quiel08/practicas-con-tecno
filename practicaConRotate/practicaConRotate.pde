float angulo = 0.0;
void setup(){
 fullScreen(); 
}
void draw(){
 translate(mouseX,mouseY);
 float escala = sin(angulo) + 2;
 scale (escala);
 rotate(angulo);
 strokeWeight(1.0/escala);
 rect(-30,-30,60,60);
 angulo += 0.1;
}
