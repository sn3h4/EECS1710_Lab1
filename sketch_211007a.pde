PImage pinkbg;
float x;
float y;
float speedX = 5;

void setup() {
  size(1600, 800, P2D);
  frameRate(60);
  pinkbg = loadImage("pinkbackground.png");
  
  
  x = width/2;
  y = height/2;
   imageMode(CENTER);
}

void draw() {
  
  x += speedX;
  if (x > width || x < 0) {
    speedX *= -1;
  }
 

  image(pinkbg, x, y, pinkbg.width * (height / pinkbg.height), height);
  
}
