final float Gravity = 15;
float gravity;
float x =0;

void setup() {
  scale(3.1);
  fullScreen();
  frameRate(30);
  gravity = Gravity;
  loadStuffs();
  initObstacles();
  initPlayer();
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------

void draw() {
  scale(3.1);
  viewPoint();
  background(92, 148, 252);
  drawObstacles();
  drawPlayer();
  if (dead) {
    fill(255);
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Click/Space To Restart",width/6.2,height/6.2);
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------

void viewPoint() {
  if (block8.x-100 <= Mario.x) {
    translate(width/8-block8.x+100, 0);
  } else if (Mario.x >= width/8)
    translate(width/8 - Mario.x, 0);
  else
    translate(0, 0);
}
