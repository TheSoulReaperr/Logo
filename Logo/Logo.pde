PFont Font;
PImage m1;

void setup() {
  fullScreen();
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  m1 = loadImage("m1.png");
}

void draw() {
  background(255);
  Font = createFont("OCR A Std", 10);
  textFont(Font);
  textSize(20);
  fill(0, 50);
  for (int i=-20; i<width/10; i++) {
    for (int j=-20; j<height/20; j++) {
      int a = int(random(0,2));
      text(a, i*15, j*25);
    }
  }
  pushMatrix();
  translate(width/2,height/2);
  
  fill(0);
  textSize(150);
  rotate(0.6); text("<", -150, +150);
  rotate(-0.2); text("C", -60, +120);
  rotate(-0.4); text("S", 0, +120);
  rotate(-0.5); text("E", +50, +130);
  rotate(0); text(">", +170,+130);
  popMatrix();
  image(m1,width/2,320,250,250);
}

void mousePressed() {
 saveFrame("output/frame3.png"); 
}
