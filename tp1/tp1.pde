PImage pinturafresas;

void setup(){
  size(800,400);
  background(255);
  pinturafresas = loadImage("pinturafresas.png");
    
}

void draw() {
  image(pinturafresas, 0,0,400,400);
  
fill(255,248,104);
stroke(255,248,104);
rect(400,0,200,200);

fill(207,247,187);
stroke(207,247,187);
rect(600,0,200,200);

fill(110,209,61);
stroke(110,209,61);
rect(400,200,200,200);

fill(250,63,144);
noStroke();
rect(600,200,200,200);

//cuadro 1//
  fill(99,113,255);
  noStroke();
  ellipse(500,125,119,138); 
  ellipse(500,90,134,106);
  triangle(433,86,440,129,500,100); 
  triangle(567,86,560,129,500,100);
  ellipse(453,109,30,80);
  ellipse(547,109,30,80);

 //tallo//
   fill(252,122,46);
   quad(540,0,510,0,473,60,502,60);
  triangle(430,24,473,60,500,40);
  triangle(460,37,456,75,510,37);
  triangle(450,37,500,76,515,37);
  triangle(480,37,535,72,545,39);
  triangle(517,38,560,35,532,58);
  //semillas//
fill(110,209,61);
  ellipse(467,97,12,22);
  ellipse(507,119,15,18);
  ellipse(540,92,14,18);
  ellipse(477,147,15,18);
  ellipse(508,177,15,19);
  ellipse(540,139,13,18);
  
  //cuadro 2 //
 fill(255,0,0);
 noStroke();
  ellipse(700,125,120,138);
  ellipse(700,93,134,106);
  triangle(767,86,756,150,700,100);
  triangle(634,86,645,150,700,100);
  ellipse(749,109,30,80);
  ellipse(651,109,30,80);
  //tallo//
  fill(99,113,255);
  quad(738,12,710,0,680,60,707,60);
  triangle(690,40,650,28,685,70);
  triangle(680,40,658,80,700,70);
  triangle(670,43,702,96,730,43);
  triangle(664,47,745,86,742,45);
  triangle(707,40,768,40,700,85);
  //semillas//
  fill(255,241,80);
  ellipse(671,98,9,17);
  ellipse(714,105,10,15);
  ellipse(750,97,10,15);
  ellipse(660,130,10,16);
  ellipse(687,130,12,14);
  ellipse(740,130,12,14);
  ellipse(719,154,10,15);
  ellipse(670,165,10,9);
  ellipse(698,177,10,11);
  
  //cuadro 3//
  fill(255,248,104);
  noStroke();
  ellipse(500,325,119,139);
  ellipse(500,292,134,106);
  triangle(567,284,559,340,500,300);
  triangle(433,284,441,340,500,300);
  ellipse(549,300,30,80);
  ellipse(453,300,30,80);
  //tallo//
  fill(116,148,240);
  quad(534,220,510,205,490,250,515,250);
  triangle(510,243,437,230,480,265);
  triangle(470,243,460,285,530,243);
  triangle(480,242,510,285,530,242);
  triangle(490,242,546,280,545,242);
  triangle(540,260,570,234,500,240);
  //semilla//
  fill(145,45,45);
 ellipse(470,290,10,11);
 ellipse(450,310,10,15);
 ellipse(530,300,15,20);
 triangle(550,287,545,300,560,300);
 ellipse(495,340,14,11);
 ellipse(475,360,14,11);
 ellipse(510,372,14,14);
 ellipse(545,330,15,18);
 
 //cuadrado 4//
  fill(99,141,252);
  noStroke();
  ellipse(700,325,119,138);
  ellipse(700,292,134,106);
  triangle(767,282,758,340,700,300);
  triangle(636,282,641,340,700,300);
  ellipse(651,300,30,80);
  ellipse(749,300,30,80); 
  //tallo//
  fill(255,241,77);
  quad(730,210,710,207,680,250,710,250);
  triangle(695,243,650,227,670,270);
  triangle(668,249,650,282,707,257);
  triangle(668,243,697,290,710,250);
  triangle(680,257,740,285,710,240);
  triangle(700,240,750,248,720,260);
  //semillas//
  fill(16,85,20);
  ellipse(660,297,10,14);
  ellipse(700,310,10,14);
  ellipse(745,297,12,15);
  ellipse(682,350,15,17);
  ellipse(725,350,11,15);
  ellipse(709,375,11,12);

//linea del cuadrado 1//
 stroke(252,122,46);
 line(430,24,432,21);
}
