PImage moon;
float x;
float y;
float speedX = 10;

void setup() {
  size(800, 600, P2D);
  frameRate(60);
  moon = loadImage("moon.png");
  x = width/2;
  y = height/2;
  imageMode(CENTER);
}

void draw() {
  background(255,255,255);
  
  //to make it turn 2 ways//
  
  x += speedX;
  if (x > width || x < 0) {
    speedX *= -1;
    }
  /*
  // you can also do it this way:
  if (x > width) {
    speedX *= -1;
  } else if (x < 0) {
    speedX *= -1;
  }
  */

  image(moon, x, y, moon.width * (height / moon.height), height);
}
