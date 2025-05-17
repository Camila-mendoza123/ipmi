PImage miImagen1, miImagen2, miImagen3, miImagen4, miImagen5, miImagen6,miImagen7;
PFont miFuente1, miFuente2;

int tiempoimagen = 3600;
int tiempotexto = 3600; 
int posY = 0;
int posX = 0;
int posRE = 200;
int dir = 1;




void setup() {
  size(640, 480);
  
  miImagen1 = loadImage("principitoyaviador.png");
  miImagen2 = loadImage("cordero.jpg");
  miImagen3 = loadImage("principitorosa.png");
  miImagen4 = loadImage("principito4.png");
  miImagen5 = loadImage("principito5.jpg");
  miImagen6 = loadImage("principito6.jpg");
  miImagen7 = loadImage("boton.png");
 
  miFuente1 = loadFont("Garamond-Bold-48.vlw");
  miFuente2 = loadFont("Consolas-BoldItalic-48.vlw");

  }
  
    void rebote() {
  posRE = posRE + dir;
  if (posRE > 340) {
    dir = dir * -1;
  }
  if (posRE < 0) {
    dir = dir * -1;
  }
  }
  
  void draw(){
    tiempoimagen--;
    background(255);
    fill(0);
  if(tiempoimagen > 3600-200){
    image(miImagen1, 0, 0, 640, 480);
  } else if(tiempoimagen > 3400-600){
    image(miImagen2, 0, 0, 640, 480);
  } else if(tiempoimagen > 3400-600 * 2 ){
    image(miImagen3, 0, 0, 640, 480);
  } else if(tiempoimagen > 3400-600 * 3 ){
    image(miImagen4, 0, 0, 640, 480);
  } else if(tiempoimagen > 3400-600 * 4){
    image(miImagen5, 0, 0, 640, 480);
  } else if(tiempoimagen > 3400-600 * 5){
    image(miImagen6, 0, 0, 640, 480);
} else if (tiempoimagen > 3400 - 600 * 6) {
  image(miImagen7, 100, 10, 400, 400);

   //boton//
 if(mouseX > 260 && mouseX < 340 && mouseY > 170 && mouseY < 250) {
  fill(0, 255, 0); 
} else {
  fill(0, 150, 0); 
}

stroke(255);
//strokeWeight(3);
ellipse(300, 250, 80, 80); 

// Texto "Reiniciar"
fill(255);
textFont(miFuente2);
textSize(16);
text("Reiniciar", 260, 260);
  }
  
  tiempotexto--;
  fill(0);
  if(tiempotexto > 3600-200){
    textFont(miFuente1);
    textSize(27);
    rebote();
    text("Un piloto que,\n tras sufrir una avería en su\n avión,\nqueda varado en el desierto\n del Sahara.", posRE,100);
  } else if(tiempotexto > 3400-600 ){
    fill(0);
    textFont(miFuente1);
   textSize(28);
   posY++;
   text("Allí conoce al Principito, quien le solicita que\nle dibuje un cordero.\nEste encuentro marca un inicio de\nconversaciones en las que el Principito\nrelata de sus viajes.",0,posY);
  } else if(tiempotexto >= 3400-600 * 2){
    fill(255);
    textFont(miFuente1);
    textSize(28);
    posX++;
    text("Originario del asteroide B 612,\n el Principito \ncuidaba de su planeta y\n una rosa vanidosa.\nAl sentirse incomprendido por,\ndecide viajar por el universo \n en busca de sabiduría y amistad.",posX,100);
  } else if(tiempotexto > 3400-600 * 3){
    fill(255);
    textFont(miFuente1);
    textSize(25);
    rebote();
    text("El visita planetas donde conoce a :\nun rey autoritario, \nun hombre de negocios obsesionado con\n las estrellas, un farolero que sigue\nórdenes y un geógrafo\nque nunca ha explorado.", 100,posRE);
  } else if(tiempotexto > 3400-600 * 4){
    fill(255);
    textFont(miFuente1);
    textSize(25);
    posY--;
    text("Finalmente, llega a la Tierra, donde\nconoce a un zorro que le enseña\nel valor de los lazos afectivos y\nla famosa lección:\nLo esencial es invisible a los ojos.",100,posY);
  } else if(tiempotexto > 3400-600 * 5){
    fill(255);
    textSize(25);
    posY++;
    text( "La historia concluye con el Principito \nregresando a su planeta y\na su rosa, dejando al piloto con\nuna reflexión sobre la\nimportancia de ver más allá de lo\nsuperficial y valorar lo \nesencial en la vida.", 100,posY);
 
  } 
  }
  
  //PROFE el boton anda cuando se ponga de color verde claro mas claro//
void mouseClicked() {
  float centroX = 100 + 400 / 2;  
  float centroY = 10 + 400 / 2;   
  float radio = 40;
  
  //clic dentro del círculo 
  float dx = mouseX - centroX;
  float dy = mouseY - centroY;
  
  //clic que ocurre dentro de la elipse
  if (dist(mouseX, mouseY, centroX, centroY) <= radio) {
    // Reiniciar la presentación para mostrar la imagen 1
    tiempoimagen = 3600;    
    tiempotexto = 3600;     
    posY = 0;
    posX = 0;
    posRE = 200;
    dir = 1;
  }
}
