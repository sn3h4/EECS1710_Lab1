class LetterGenerator {
  
  String input;
  PVector position;
  PImage img;
  color col;
  
  LetterGenerator(String _input, float x, float y) {
    input = _input;
    position = new PVector(x, y);
    col = getRandomColor();

    switch(input) {
      case "a":
        img = a;
        break;
      case "b":
        img = b;
        break;
      case "c":
        img = c;
        break;
      case "d":
        img = d;
        break;
      case "e":
        img = e;
        break;
      case "f":
        img = f;
        break;
      case "g":
        img = g;
        break;
      case "h":
        img = h;
        break;  
      case "i":
        img = i;
        break;
      case "j":
        img = j;
        break;  
      case "k":
        img = k;
        break;
      case "l":
        img = l;
        break;
      case "m":
        img = m;
        break;
      case "n":
        img = n;
        break;
      case "o":
        img = o;
        break;
      case "p":
        img = p;
        break;
      case "q":
        img = q;
        break;
      case "r":
        img = r;
        break;
      case "s":
        img = s;
        break;
      case "t":
        img = t;
        break;
      case "u":
        img = u;
        break;
      case "v":
        img = v;
        break;
      case "w":
        img = w;
        break;
      case "x":
        img = letterx;
        break;
      case "y":
        img = lettery;
        break;
      case "z":
        img = letterz;
        break;
    }
  }
  
  color getRandomColor() {
    return color(127 + random(127), 127 + random(127), 127 + random(127));
  }
  
  void draw() {
    // shadow
    tint(0, 127);
    image(img, position.x + 10, position.y + 10);
    
    tint(col);
    image(img, position.x, position.y);
    noTint();
  }

}
