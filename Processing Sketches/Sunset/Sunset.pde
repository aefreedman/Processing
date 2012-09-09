// Constants
float x, y, xPos, yPos, xSpeed, ySpeed, a, inc;
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2, c3, c4, c5;

void setup() {
  size(1280, 720);
  println("Initializing...");
  println("START OF AWESOME");
  
  inc = TWO_PI/25.0;
  a = TWO_PI;
  xPos = x;
  yPos = y;
  xSpeed = cos(a);
  ySpeed = 1;

  // Define colors
  b1 = color(255);
  b2 = color(0);
  c1 = color(252, 160, 20);
  c2 = color(252, 8, 8);
  c3 = color(252, 200, 54);
  c4 = color(8, 205, 252, 200);
  c5 = color(5, 103, 126, 200);

}

void draw() {
  // Background
  setGradient(0, 0, width, 2 * (height/3), c1, c2, Y_AXIS);
  
  //Sun (setting)
  noStroke();
  fill(c3);
  ellipse(xPos, yPos, 430, 400);
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  
//  Sun (static)
//  noStroke();
//  fill(c3);
//  ellipse(width/2, height/2, 430, 400);
  
  //OceanNatural
  setGradient(0, 1 + (2 * (height/3)), width, 2* (height/3), c4, c5, Y_AXIS);
  
  //OceanReflection
  setGradient(0, 1 + (2 * (height/3)), width, 2* (height/3), c2, c1, Y_AXIS);


  println("drawing...");
  println("xPos: " + xPos);
}

//Defining setGradient function
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
}


