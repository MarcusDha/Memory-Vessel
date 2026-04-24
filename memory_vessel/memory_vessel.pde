//Marcus Dha

//FLOWER CERAMIC DRAWING

color skyBlue = #4BBDDB;
color yellow = #EBF01F;
color orange = #F5B514;
color white = #FFFFFF;

void setup() {
  size(1000,1000);
  
}

void draw () {
  sky(0,0);
}





void sky (int x, int y) {
  
   
  noStroke();
  fill(skyBlue);
  rect(x,y,width,height);
  
  //Flower Sun
  fill(yellow);
  ellipse(500,200,55,200);
  ellipse(500,200,200,55);
  
  pushMatrix();
  translate(500,200);
  rotate(radians(45) ) ;
  ellipse(0,0,200,55);
  ellipse(0,0,55,200);
  popMatrix();
  
  fill(orange);
  circle(500,200,60);
  
  //clouds
  
  fill(white);
  ellipse(250,300,400,50);
  ellipse(200,275,200,50);
}
