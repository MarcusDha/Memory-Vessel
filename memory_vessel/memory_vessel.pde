//Marcus Dha

//FLOWER CERAMIC DRAWING

color skyBlue = #4BBDDB;
color yellow = #EBF01F;
color orange = #F5B514;
color white = #FFFFFF;
color green = #47C94E;
color dGreen = #2C8945;
color brown = #987654;
color violet = #C45CC6;
color red = #F74C3C;
color navy = #432ED1;
color tan = #E8DB8F;
color pink = #E88FE7;
color blue = #4FACB7;
color grey = #B5BEBF;
//int y = height;

float s = 1;

color[] colors = {yellow, orange, white, violet, red, pink, blue};


void setup() {
  size(1000, 1000);

  sky(0, 0);
  building(0,0);
  field(0, 0);
  for (int y = 550; y < 700; y += 25) {
    for (int x = 0; x <= 1000; x += 10) {

      flowers((int)random(0, width), (int)random(550, 650), colors[ (int)random(0, 7) ], s);
    }
  }

  for (int y = 550; y < 750; y += 35) {
    for (int x = 0; x <= 1000; x += 30) {

      flowers((int)random(0, width), (int)random(650, 750), colors[ (int)random(0, 7) ], s);
    }
  }

  for (int y = 750; y <= height; y += 55) {
    for (int x = 0; x <= width; x += 50) {

      flowers((int)random(0, width), (int)random(750, 960), colors[ (int)random(0, 7) ], s);
    }
  }
}

void draw () {
  println(mouseX,mouseY);
  dirtPath(0, 0);
  family(0, 0);
}


void sky (int x, int y) {


  noStroke();
  fill(skyBlue);
  rect(x, y, width, height);

  //Flower Sun
  fill(yellow);
  ellipse(500, 200, 55, 200);
  ellipse(500, 200, 200, 55);

  pushMatrix();
  translate(500, 200);
  rotate(radians(45) ) ;
  ellipse(0, 0, 200, 55);
  ellipse(0, 0, 55, 200);
  popMatrix();

  fill(orange);
  circle(500, 200, 60);

  //clouds

  fill(white);

  //left
  ellipse(250, 300, 400, 50);
  ellipse(200, 275, 200, 50);

  //right
  ellipse(700, 200, 300, 50);
  ellipse(800, 175, 300, 100);

  ellipse(280, 100, 100, 50);
  ellipse(360, 80, 200, 100);
}

void field (int x, int y) {

  //hill left
  fill(green);
  ellipse(0, 550, 600, 200);
  fill(dGreen);
  ellipse(0, 550, 500, 150);

  //hill right
  fill(green);
  ellipse(1000, 550, 800, 150);
  fill(dGreen);
  ellipse(1000, 550, 675, 100);
  //tree
  fill(brown);
  rect(100, 400, 25, 120);
  fill(dGreen);
  circle(95, 390, 50);
  circle(130, 390, 50);
  circle(112, 360, 50);
  
  fill(brown);
  rect(800,440,30,100);
  fill(dGreen);
  circle(795,440,50);
  circle(835,440,50);
  circle(815,410,50);

  //ground
  fill(green);
  rect(0, 550, width, height);
}

void dirtPath (int x, int y) {

  fill(brown);
  triangle(500, 500, 300, height, 500, height);
  triangle(500, 500, 500, height, 700, height);
  fill(skyBlue);
  rect(475, 500, 50, 50);
}

void building (int x, int y) {
 
  fill(blue);
  stroke(grey);
  strokeWeight(10);
  rect(350,365,100,200);
  strokeWeight(4);
  line(385,365,385,560);
  line(415,365,415,560);
  for(int i = 365; i <= 600; i += 20) {
    line(350,i,450,i);
  }
  noStroke();
}

void flowers (int x, int y, color variable, float s) {

  pushMatrix();
  translate(x, y);
  s = map(y, 550, 1000, 0.3, 1.25);
  scale(s);

  stroke(dGreen);
  strokeWeight(3);
  fill(dGreen);
  line(0, 0, 0, 40);

  //petals
  noStroke();
  fill(variable);
  ellipse(0, 0, 10, 30);
  ellipse(0, 0, 30, 10);
  fill(0);
  ellipse(0, 0, 10, 10);

  popMatrix();
}

void family (int x, int y) {

  // KID--------------------
  // pants
  stroke(navy);
  strokeWeight(15);
  line(450, 800, 440, 850);
  line(460, 800, 470, 850);


  //shirt
  noStroke();
  fill(white);
  rect(440, 770, 30, 30);
  ellipse(455, 770, 30, 20);

  //sleeves + arms

  strokeWeight(10);
  stroke(tan);
  line(437, 775, 430, 800);
  line(473, 775, 477, 785);
  line(477, 785, 482, 770);

  stroke(white);
  line(440, 770, 437, 775);
  line(470, 770, 473, 775);

  //head
  fill(tan);
  noStroke();
  ellipse(455, 750, 25, 25);
  //hat
  fill(red);
  ellipse(455, 745, 25, 15);
  fill(yellow);
  triangle(453, 737, 445, 750, 453, 750);
  triangle(456, 737, 463, 750, 456, 750);
  ellipse(455, 750, 16, 5);
  ellipse(455, 743, 5, 13);
  fill(navy);
  triangle(454.5, 735, 451, 751, 459, 751);



  //PARENT ---------------------

  //pants
  stroke(0);
  strokeWeight(17);
  line(520, 850, 530, 795);
  line(550, 850, 540, 795);


  //shirt
  noStroke();
  fill(pink);
  rect(520, 755, 31, 40);
  ellipse(535, 755, 30, 20);

  //sleeves + arms
  stroke(pink);
  strokeWeight(10);
  line(520, 755, 490, 765);
  line(550, 755, 561, 785);

  noStroke();
  fill(tan);
  circle(490, 765, 10);
  circle(561, 785, 10);

  //head
  fill(0);
  ellipse(535, 735, 25, 25);
  rect(522, 735, 26, 30);
}
