void mousePressed() {
  if (GameScreen == 0)  Start();
  if (GameScreen == 2)  Start();
  if (GameScreen == 1) {
    if(mouseX<width/2) {
      if(mouseY < height/2) {
        p1UP = true;
        p1DOWN = false;
      } else {
        p1UP = false;
        p1DOWN = true;
      }
    } else {
      if(mouseY < height/2) {
        p2UP = true;
        p2DOWN = false;
      } else {
        p2UP = false;
        p2DOWN = true;
      }
    }
  }
}
