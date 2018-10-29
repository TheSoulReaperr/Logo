
void keyPressed() {
  if(keyCode == UP && rest && dead == false && Mario.dy == Mario.y){
    Mario.gravity = -20;
    rest = false;
  }
  if(keyCode == RIGHT && dead == false) {
    goRight = true;
    left = false;
  }
  if(keyCode == LEFT && dead == false) {
    goLeft = true;
    left = true;
  }
  if(dead) {
    if(key == 32) {
      initPlayer();
      dead = false;
    }
  }
}

void keyReleased() {
  if(keyCode == RIGHT) {
    goRight = false;
  }
  if(keyCode == LEFT) {
    goLeft = false;
  }
}
