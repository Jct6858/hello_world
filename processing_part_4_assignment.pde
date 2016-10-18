float ballX = 100;
float ballY = 100;
float ballR = 10;
float dX = random(1, 2);
float dY = random(1, 2);
float paddleX;
float paddle2X;
float paddleY = 10;
float paddle2Y = 10;
float paddleW = 10;
float paddle2W = 10;
float paddleH = 50;
float paddle2H = 50;
float player1Score = 0;
float player2Score = 0;
float c;
int start;
PFont myFont;

 
void setup() {
  size(400, 400);
  paddleX = width - 15;
  paddle2X = width - 385;
  myFont = createFont("Ziggurat-Black", 20);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  start = millis();
}
 
void draw() {
  background(200);
  ellipse(ballX, ballY, 2 * ballR, 2 * ballR);
 
  rect(paddleX, paddleY, paddleW, paddleH);
  rect(paddle2X, paddle2Y, paddle2W, paddle2H);
    
  int timer = millis()-start;
  text("Timer", 200, 360);
  text(timer/60000 + ":" + timer/1000 + ":" + timer, 200, 380);
  
  if(c > 255) {
    c=0;
  }
  else {
    c += 1; 
  }
  
  if (ballRight() > width-15) {
    colorMode(HSB);
    fill(c, 255, 255);
    rect(0, 0, width, height);
    player2Score = player2Score + 1;
  }
  
  if (ballLeft() < width - 385) {
    colorMode(HSB);
    fill(c, 255, 255);
    rect(0, 0, width, height);
    player1Score = player1Score + 1;
  }
  
  if (collisionRight()) {
    dX = -dX; // if dX == 2, it becomes -2; if dX is -2, it becomes 2
  }
 
  if (collisionLeft()) {
    dX = -dX; // if dX == 2, it becomes -2; if dX is -2, it becomes 2
  }
 
  if (ballBottom() > height) {
    dY = -dY; // if dY == 2, it becomes -2; if dY is -2, it becomes 2
  }
 
  if (ballTop() < 0) {
    dY = -dY; // if dY == 2, it becomes -2; if dY is -2, it becomes 2
  }
 
  ballX = ballX + dX;
  ballY = ballY + dY;
  text("Score", 200, 20);
  text(player1Score + "" + ":" + "" + player2Score, 200, 40);
}
 
boolean collisionRight() {
  boolean returnValue = false; 
  if ((ballRight() >= paddleX) && (ballLeft() <= paddleX + paddleW)) {
    if ((ballBottom() >= paddleY) && (ballTop() <= paddleY + paddleH)) {
      returnValue = true;
    }
  }
  return returnValue;
}

  boolean collisionLeft() {
    boolean returnValue2 = false;
    if ((ballLeft() <= paddle2X) && (ballRight() >= paddle2X + paddle2W)) {
    if ((ballBottom() >= paddle2Y) && (ballTop() <= paddle2Y + paddle2H)) {
      returnValue2 = true;
    }
  }
  return returnValue2;
}
 
 
 
float ballLeft() {
  return ballX - ballR;
}
 
float ballRight() {
  return ballX + ballR;
}
 
float ballTop() {
  return ballY - ballR;
}
 
float ballBottom() {
  return ballY + ballR;
}
 
 
 
void keyPressed() {
  if(keyPressed && (key == CODED)) {
  if (key == CODED) {
    if (keyCode == UP) {
      paddleY = paddleY-20;
    } else if (keyCode == DOWN) {
      paddleY = paddleY+20;
    }
  }
      if (keyCode == LEFT) {
        paddle2Y = paddle2Y-20;
      }
       else if (keyCode == RIGHT) {
      paddle2Y = paddle2Y+20;
    }

}

}