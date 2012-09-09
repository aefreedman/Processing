PFont font;
int circles;
int c;
int circXs[];

void setup() {
  size(900, 480);

  circXs = new int[10];

  for (int i = 0; i < circXs.length; i++) {
    circXs[i]=randomInt(width);
  }


  font = loadFont("Bauhaus93-48.vlw");

  circles = c;
  c = 0;
}

void draw() {

  drawEllipse(color(0, 0, random(0, 255)), color(255, 255, 255), randomInt(10), randomInt(width), randomInt(width), 50);
  drawEllipse(color(0, random(0, 255), 0), color(random(100, 150)), randomInt(10), randomInt(width), randomInt(width), 50);
  drawEllipse(rColor(), rColor(), 5, randomInt(width), randomInt(width), 50);
  c = c + 3;
  circles = c;

  //  println("Circles: " + circles);

  textFont(font, 56);
  text("word", 10, 50);
  textFont(font, 230);
  strokeWeight(5);
  text(circles, width/4, 2*height/4);

  drawArray(circXs);

  if (circles > 9000) {
    textFont(font, 100);
    fill(255, 0, 0);
    text("IT'S OVER 9000!!!", 50, height - 50);
  }
}

void drawEllipse(color fColor, color sColor, int weight, int xPos, int yPos, int r) {
  fill(fColor);
  strokeWeight(weight);
  stroke(sColor);
  ellipse(xPos, yPos, r, r);
}

color rColor() {
  return color(random(255), random(255), random(255));
}

int randomInt(int high) {
  return randomInt(0, high);
}

int randomInt(int low, int high) {
  return int(random(low, high));
}

void drawArray(int xPos[]) {
  for (int i = 0; i < xPos.length; i++) {
    drawEllipse(color(0, 0, 0), color(255, 255, 255), 5, xPos[i], 300, 100);
  }
}

