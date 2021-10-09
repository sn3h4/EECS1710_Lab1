float rot1 = 0;
float rot2 = 0;
float lengthHand1 = 200;
float lengthHand2 = 100;
int lastSecond = 0;
int lastMinute = 0;
PImage calmbg;
PImage img;
float x;
float y;

void setup() {
  size(800, 600, P2D);  
  img = loadImage ("circle.png");
  calmbg = loadImage ("calm.png");
  img = loadImage("circle.png");
  calmbg = loadImage("calm.png");
  img.mask(calmbg);

}

void draw() {
  background(166, 96, 139);
  
 
  imageMode (CENTER);
   ellipse(width/2, height/2, 500, 500);
   fill(77, 14, 53);
  ellipse(width/2, height/2, 50, 50);
  
  fill(232, 175, 121);
  
  
  
  
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot1));
  line(0, 0, lengthHand1, 0);
  ellipse(lengthHand1, 0, 10,10);
  popMatrix();
  fill(191, 139, 90);
  
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot2));
  line(0, 0, lengthHand2, 0);
  ellipse(lengthHand2, 0, 10,10);
  popMatrix();
  fill(209, 151, 187);
  
  int s = second();
  int m = minute();
  
  if (s != lastSecond) {
    rot1 += 6;
    lastSecond = s;
  }
  
  if (m != lastMinute) {
    rot2 += 6;  
    lastMinute = m;
  }
    image(calmbg, x, y);
}
