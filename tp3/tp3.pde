//https://youtu.be/8b55mrWaNCQ

PImage imagen;
boolean animar = false; 
boolean reiniciando = false; 

final float TAM_ORIG = 60;
float movc = 0; //desplazamiendo
int columnas = 3, filas = 3;
float zonaX = 400;
float anchoCelda, altoCelda;

void setup() {
  size(800, 400);
  imagen = loadImage("imagen.png");
  
 
  anchoCelda = zonaX / columnas;
  altoCelda = height / filas;
  noStroke();
}

void draw() {
    background(255);
   image(imagen, 0, 0, 400, 400);

//Si el mouse entra en la zona derecha 
  if (!animar && !reiniciando && mouseX > zonaX && mouseX < width) {
    animar = true;
  }
 if (animar) {
  movc += random(-2, 1);
  if (movc < 0) {
    movc = 0;
  } else if (movc > zonaX - anchoCelda) {
    movc = zonaX - anchoCelda;
  }
}
  //Si el mouse vuelve a la izquierda, desactivá el modo reinicio
  if (mouseX < zonaX) {
    reiniciando = false;
  }

  dibujarRectangulos(zonaX, anchoCelda, height);
  dibujarCirculos(zonaX, anchoCelda, altoCelda, animar, movc, mouseX, mouseY);
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    movc = 0;
    animar = false;
    reiniciando = true; 
  }
}
