boolean gameOver;    //declaring variables
float playerX;
float playerY;
int missingCirc;
int c1;
int r, g, b;
int rv, gv, bv;
int xArray[];
int yArray[];
int xSpeedA[];
int ySpeedA[];
PImage img;
PFont font1;
int fade[];
int i;

void setup() {
  size(600, 600);      
  gameOver = false;    
  img = loadImage("golemcity1920x1080.jpg");
  frameRate(30);
  
  i = 0;
  
  fade = new int[255];
  
  font1 = loadFont("Arial-ItalicMT-48.vlw");

  xArray = new int[11];
  for (int i = 0; i < xArray.length; i++) {
    xArray[i] = 50 * i;
  }

  yArray = new int[11];
  for (int i = 0; i < yArray.length; i++) {
    yArray[i] = int(random(0, height));
  }

  xSpeedA = new int[11];
  for (int i = 0; i < xSpeedA.length; i++) {
    xSpeedA[i] = int(random(1, 5));
  }

  ySpeedA = new int[11];
  for (int i = 0; i < ySpeedA.length; i++) {
    ySpeedA[i] = int(random(1, 5));
  }

  r = 0;
  g = 0;
  b = 0;

  rv = 1;
  gv = 0;
  bv = 1;



  playerX = width/2;      //playerX = half the width of the screen divided by 2 or 500/2 
  playerY = height - 50;  //playerY = height of the screen (500) minus 50  (450)

  missingCirc = int(random(11));    //assigning a random integer between 1 and 11 to the variable missingCirc
}

void draw() {
  c1 = color(r, g, b);

  if (mouseX <= width) {
    playerX = mouseX;
  }
  if (mouseY <= height) {
    playerY = mouseY;
  }

  if (gameOver) {
    death(0, 5);
    deathWords(0, 5);
   }

  else {
    image(img, 0, 0);

    b = b + bv;
    r = r + rv;
    g = g + gv;
    
    if (frameCount < 90){
    textFont(font1, 50);
    text("Ready:" + ((90/3) - frameCount/3), width/2 - 100, height/2);
    }

    if (frameCount > 90) {

      for (int k = 0; k < yArray.length; k++) {
        if (yArray[k] > height) {
          yArray[k] = 0;
          missingCirc = int(random(11));
          r = r++;
          g = 0;
          b = 0;
        }
      }

      for (int g = 0; g < xArray.length; g++) {
        if (xArray[g] > width) {
          xArray[g] = 0;
          //        r = 0;
          //        g = 0;
          //        b = 0;
        }
      }

      fill(150);
      ellipse(playerX, playerY, 50, 50);

      for (int i=0; i < xArray.length; i++) {
        if (i != missingCirc) {
          fill(c1);
          ellipse(xArray[i], yArray[i], 50, 50);
          xArray[i] = xArray[i] + xSpeedA[i];
          yArray[i] = yArray[i] + ySpeedA[i];

          if (dist(playerX, playerY, xArray[i], yArray[i]) < 50) {
            gameOver = true;
          }
        }
      }
    }
  }
}

