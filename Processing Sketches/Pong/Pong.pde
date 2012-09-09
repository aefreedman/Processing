//MAKIN' DA PONG (old code)
//Players 1 & 2 currently initialized individually
//Players 1 & 2 cannot move simultaneously (working on fix)
//Defining
Ball b1, b2;
Paddle p1, p2;
//aiPaddle a1;
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
  p1 = new Paddle(50, 0, 10, 30, 5, 'w', 's');
  p2 = new Paddle(width - 50, 0, 10, 30, 5, 'o', 'l');

}

void draw() {
  background(0);

  b1.displayBall();
//  b2.displayBall();

  p1.displayPaddle();
  p2.displayPaddle();
  
  //Paddle & Ball collision detection
  if( ((p1.xPos + p1.w) == b1.xPos) && (b1.yPos >= (p1.yPos - (b1.r * 1.5))) && (b1.yPos <= (p1.yPos + p1.h + (b1.r/2)))){
  b1.xSpeed = -b1.xSpeed;
  }
  if( ((p2.xPos - p2.w) == b1.xPos) && (b1.yPos >= (p2.yPos - (b1.r * 1.5))) && (b1.yPos <= (p2.yPos + p1.h + (b1.r/2)))){
  b1.xSpeed = -b1.xSpeed;
  }
  
  textFont(scoreFont, 50);
  textAlign(CENTER);
  text(b1.scoreP1, (width/2 - 100), 50);
  text(b1.scoreP2, (width/2 + 100), 50);
  textFont(scoreFont, 16);
  text("It's muthafukin' pong! (Almost)", width/2, height - 30);

}




