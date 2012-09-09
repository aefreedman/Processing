//Declare variables
float xPos;
float yPos;
float xSpeed;
float ySpeed;
color eColor;

//Initialization
void setup() {
  size(640, 480);
  xPos = width/2;
  yPos = height/2;
  xSpeed = 1;
  ySpeed = 2;
  eColor = color(255, 0, 0);
}

//Drawing line
void draw() {
  strokeWeight(2);
  stroke(xPos, yPos, xPos/yPos, 230);
  line(xPos, yPos, yPos + 50, xPos + 50);
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  if (yPos >= height || yPos < 0) { //Bottom edge detection
    println("EDGE!");
    ySpeed = -ySpeed;
  }
  if (xPos >= width || xPos < 0) {  //Side edge detection
    println("EDGE!");
    xSpeed = -xSpeed;
  }
  { //Drawing ellipse
    strokeWeight(2);
    noFill();
    stroke(eColor);
    ellipse(yPos, xPos, 50, 50);
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    if (yPos >= height || yPos < 0) { //Bottom edge detection
      println("EDGE!");
      ySpeed = -ySpeed;
    }
    if (xPos >= width || xPos < 0) {  //Side edge detection
      println("EDGE!");
      xSpeed = -xSpeed;
    }
  }
}


void keyPressed() {
  if (key == 'r') {
    eColor = color(255, 0, 0);
  } 
  else if (key == 'g') {
    eColor = color(0, 255, 0);
  }
  else if (key == 'p') {
    eColor = color(0, 0, 255);
  }
}

