//MAKIN' DA PONG (old code)

//Defining
Ball b1, b2;
Paddle p1;
aiPaddle a1;
float yBall;
float xBall;
PFont scoreFont;

void setup() {
  size(640, 300);
  background(0);
  frameRate(60);
  noStroke();
  scoreFont = loadFont ("OCRAExtended-48.vlw");


//  Initializing
  xBall = width/2;
  yBall = height/2;
  b1 = new Ball(xBall, yBall, 8, -2, 2);
  b2 = new Ball(width/2, height/2, 10, 6, 6);
  p1 = new Paddle(50, 0, 10, 30, 5);

}

void draw() {
  background(0);

  b1.displayBall();
//  b2.displayBall();

  p1.displayPaddle();
  a1.displayPaddle();
  
  //Paddle & Ball collision detection
  if( ((p1.xPos + p1.w) == b1.xPos) && (b1.yPos >= (p1.yPos - (b1.r * 1.5))) && (b1.yPos <= (p1.yPos + p1.h + (b1.r/2)))){
  b1.xSpeed = -b1.xSpeed;
  }
  if( ((a1.xPos - a1.w) == b1.xPos) && (b1.yPos >= (a1.yPos - (b1.r * 1.5))) && (b1.yPos <= (p1.yPos + p1.h + (b1.r/2)))){
  b1.xSpeed = -b1.xSpeed;
  }
  
  textFont(scoreFont, 50);
  text(b1.score, (width/2 - 100), 50);
  text(b1.score, (width/2 + 100), 50);

}




