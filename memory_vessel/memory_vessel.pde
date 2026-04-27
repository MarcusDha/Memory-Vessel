//Marcus Dha

//FLOWER CERAMIC DRAWING

color skyBlue = #4BBDDB;
color yellow = #EBF01F;
color orange = #F5B514;
color white = #FFFFFF;
color green = #47C94E;
color dGreen = #2C8945;
color brown = #987654;

color[] colors = {yellow, orange, white};


void setup() {
  size(1000, 1000);
}

void draw () {
  sky(0, 0);
  field(0, 0);

  for (int x = 0; x <= width; x += 100) {
    flowers((int)random(0, width), (int)random(800, 800), colors[ (int)random(0, 3) ]);
  }
}

//casting operator
//flowers(random(0, 200), random(400, 800), colors[ (int)random(0, 3) ]





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
}

void field (int x, int y) {

  fill(green);
  rect(0, 550, width, height);

  //dirt path
  fill(brown);
  triangle(500, 500, 300, height, 500, height);
  triangle(500, 500, 500, height, 700, height);
  fill(skyBlue);
  rect(450, 500, 100, 50);
}


void flowers (int x, int y, color variable) {

  stroke(dGreen);
  strokeWeight(3);
  fill(dGreen);
  line(x, y, x, y+40);
  //petals
  noStroke();

  fill(variable);
  ellipse(x, y, 10, 30);
  ellipse(x, y, 30, 10);
  fill(0);
  ellipse(x, y, 10, 10);
}
