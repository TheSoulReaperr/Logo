class Obstacle {
  float x;
  float y;
  float w;
  float h;
  PImage Img;

  Obstacle(float _x, float _y, float _w, float _h, PImage _Img) {
    w = _w;
    h = _h;
    x = _x;
    y = _y;
    Img = _Img;
  }

  Obstacle(float _x, float _y, float _w, float _h) {
    w = _w;
    h = _h;
    x = _x;
    y = _y;
  }

  Obstacle(float _x, float _y, PImage _Img) {
    w = 16;
    h = 16;
    x = _x;
    y = _y;
    Img = _Img;
  }

  void display() {
    fill(255, 0, 0);
    noStroke();
    //rect(x, y, w, h);
    image(Img, x, y, w, h);
    collide();
  }

  void Draw() {
    float X = x;
    float Y = y;
    float W = 16;
    for (int i =0; i<w/(W); i++) {
      image(Img, X, Y, W, W);
      X+=W;
    }
    X = x;
    Y+=W;
    for (int i =0; i<w/(W); i++) {
      image(Img, X, Y, W, W);
      X+=W;
    }
    X = x;
    Y+=W;
    for (int i =0; i<w/(W); i++) {
      image(Img, X, Y, W, W);
      X+=W;
    }
    collide();
  }

  void collide() {
    if (Mario.x + Mario.w > x && Mario.y + Mario.w > y && Mario.y < y && Mario.x <x+w) {
      Mario.y = y - Mario.w;
      rest = true;
    } else if (Mario.x + Mario.w > x && Mario.y < y+h && Mario.x < x+w && Mario.y + Mario.w > y+h) {
      Mario.y = y + h;
      Mario.gravity = 0;
      Mario.gravity +=2;
    } else if (Mario.x + Mario.w >= x && Mario.y + Mario.w > y && Mario.y < y +h && Mario.x < x)
    {
      Mario.x = x - Mario.w;
    } else if (Mario.x < x+w && Mario.y + Mario.w > y && Mario.y < y +h && Mario.x + Mario.w > x+w)
    {
      Mario.x = x+w;
    }
  }
}
