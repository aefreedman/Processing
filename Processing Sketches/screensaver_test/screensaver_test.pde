//Declare
float a = 0.0;
float x, y;
float speedX;
float speedY;
float inc = TWO_PI/25.0;
boolean changeSpeed;
boolean edge;
String word;
char c;

void setup() {
  size(1280, 720);
  background(0);
  //Initialize
  x = 1;
  y = 1;
  speedX = .1;
  speedY = .1;
  changeSpeed = true;
  edge = true;
  word = "xPos: ";
  c = 'f';
  //  println("setup");
}

void draw() {
  //Use
  for (int i = 0; i < .5; i++) {
    stroke(x, y, a);
    strokeWeight(4);
    line(x, y, x - 50+cos(a)*60.0, y - 50+sin(a)*80.0);
    line(x + 200, y, x - 50+cos(a)*60.0, y - 50+sin(a)*80.0);
    line(x + 200, y, x - 50+cos(a)*60.0, y - 50+sin(a)*80.0);
  }
  x = x + speedX;
  y = y + speedY;
  a = a + inc;
  speedY = speedY + 1;
  speedX = speedX + (a * .1);
  if (changeSpeed) {
    speedX = speedX + .5;
  } 
  if (edge) {
  }
    println(word + x);
}

void mousePressed() {
  println("mouse pressed!!!");
}

void keyPressed(){
  println("You pressed: " + key);
}

