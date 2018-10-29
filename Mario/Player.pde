boolean dead = false;
boolean rest = true;
boolean left = false;
boolean goLeft = false;
boolean goRight = false;
Player Mario;

void initPlayer() {
  Mario = new Player(40, 155);
}

void drawPlayer() {
  Mario.display();
}


class Player { 
  float x;
  float y;
  float w;
  float dx;
  float dy;
  float gravity;
  int level;

  Player(float _x, float _y) {
    x = _x;
    y = _y;
    w = 16;
    dx = x;
    dy = y;
  }

  void move() {
    if (goRight) x+= 10;
    if (goLeft) x -= 10;
    if (x<0) x = 0;
    if (x+w>3340) x= 3340-w;
    if (gravity < 10) {
      gravity +=2;
    }
    y+=gravity;
    if (y>200) dead = true;
    if (dead) {
      goRight = false;
      goLeft = false;
    }
  }

  void display() {
    move();
    if (dead) Die();
    else if (dx < x && dead == false && rest) {
      if (frameCount%18>=15)  RunRight2();
      else if (frameCount%18>=12)  RunRight3();
      else if (frameCount%18>=9)  RunRight4();
      else if (frameCount%18>=6)  RunRight3();
      else if (frameCount%18>=3)  RunRight2();
      else if (frameCount%18>=0)  RunRight1();
    } else if (dx > x && dead == false && rest) {
      if (frameCount%18>=15)  RunLeft2();
      else if (frameCount%18>=12)  RunLeft3();
      else if (frameCount%18>=9)  RunLeft4();
      else if (frameCount%18>=6)  RunLeft3();
      else if (frameCount%18>=3)  RunLeft2();
      else if (frameCount%18>=0)  RunLeft1();
    } else if (dy != y && dead == false) {
      if (left)  RunLeft4();
      else      RunRight4();
      rest = false;
    } else {
      if (left)  StandLeft();
      else StandRight();
    }
    dy=y;
    dx=x;
  }
}
