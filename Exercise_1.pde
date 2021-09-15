float x = 42;
color bgcolor = color(0,255,0);

void setup () {
  size (800, 600, P2D);
  ellipseMode (CENTER);
  background (56, 77, 32);
}

void draw () {
  if (mousePressed) {
    ellipseMode (CENTER);
    fill (38, 81, 82);
    stroke (186, 201, 168);
    line (mouseX, mouseY, pmouseX, pmouseY);
    ellipse (mouseX, mouseY, x, x);
    strokeWeight (2);
  stroke (222, 121, 146);
  strokeWeight (1);
  fill (88, 16, 34);
  ellipse (x++, height/2, 40, 60);
  }
}



    
    
    
    
    
