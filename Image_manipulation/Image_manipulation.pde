PImage img;
int cellsize = 6;
int cols, rows;

void setup() {
  size(700, 871, OPENGL);
  img = loadImage("dreamphoto.jpg");
  cols = width/cellsize;
  rows = height/cellsize;
}

void draw() {
  background(128, 0, 128);
  loadPixels();

for (int i = 0; i < cols; i++) {
 
 for (int j = 0; j < rows; j++) {
   int x = i*cellsize + cellsize/2;
   int y = j*cellsize + cellsize/2;
   int loc = x + y*width;
   color c = img.pixels[loc];
   float z = (mouseX/(float)width) * brightness(img.pixels[loc]) - 100;
   
   pushMatrix();
   translate(x, y, z);
   fill(c);
   noStroke();
   rectMode(CENTER);
   ellipse(0, 0, cellsize, cellsize);
   popMatrix();
 }
}
}