int death(int timer, int inc){
  timer = timer + inc;
  fill(255, 0, 0, timer);
  rect(0, 0, width, height);
  return timer;
}

void deathWords(int timer, int inc){
  timer = timer + inc;
  font = loadFont("Arial-ItalicMT-48.vlw");
  fill(255, 255, 255, timer);
  textFont(font, 50);
  text("Dead!", width/2, height/2);
}



//
//void mouseMoved() {
//  if (mousePressed && (mouseButton == LEFT)) {
//    playerX = mouseX;
//  } 
//  else {
//    playerY = mouseY;
//  }
//
//  if (playerX > width) {
//    playerX = width;
//  }
//
//  if (playerX < 0) {
//    playerX = 0;
//  }
//}

