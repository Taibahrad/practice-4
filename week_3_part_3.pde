PImage img;

void setup() {
  size(760, 500, P2D);
  img = loadImage("moon.png");
  img.resize(img.width/5, img.height/5);
}

void draw() {
  background(102,0,0);
  
  for (int i=0; i<10; i++) {
    float x = random(width);
    float y = random(height);
    
    for (int j=0; j<10; j++) {
      float x2 = x + j;
      //the 5 id the speed and the bigger you make the num the faster it moves randomly 
      float y2 = y + j * 5;
      float alphaVal = abs(255 - ((y2 / height) * 255));
      tint(255, alphaVal);
      image(img, x2, y2);
    }
  }
}
