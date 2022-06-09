//Nombre: Yamila Polidori
//Legajo: 91313/6
// Video: https://youtu.be/xewlOak4w38
// con cualquier tecla se reinicia

int cant;
int tam;

void setup () {
  size (500,500);
  cant = 10;
  tam = width/cant; 
}

void draw () {
  background (455+ mouseX ,255  + mouseY); 
  strokeWeight (5);

  for (int i=0; i<width; i+=7){
    line (i,0,i,500);
  }

 for (int i=0; i<cant; i++){
      for (int j=0; j<cant; j++) {
       // rectMode (CENTER);
        noStroke ();
        float tono = map(i+j, 0, cant+cant, 0, 255); 
        fill ( 0 - mouseX, 255  - mouseY, 210, tono);
        ellipse( 25 + i*tam, 30 + j*tam,tam,tam);
      }


}
}
void keyPressed() {
  mouseX= 0;
  }
