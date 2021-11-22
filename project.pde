PImage img;
int pointillize = 40;

void setup() {
  size(1200, 1200);
  img = loadImage("yellow.png");

  tint(200,127);
   image(img,0,0);
  smooth();
}

void draw() {
  
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;

  // Look up the RGB color in the image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  


  // Draw a square at that location with that color
  fill(r,g,b,20000);
   square(x,y,pointillize);
   
}
