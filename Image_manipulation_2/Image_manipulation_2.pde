PImage img;

void setup(){
  size(700, 871);
  img = loadImage("dreamphoto.jpg");
  noSmooth();
  noStroke();
  
}

void draw() {
  background(255);
  int widthGap = 5;
  int heightGap = 5;
  
  for (int i = 0; i < width; i+=widthGap) {
    for (int j = 0; j < height; j+=heightGap) {
      color c = img.get(i, j);
      fill(c);
      ellipse(i, j, 5, 5);
      
       
     
    }
  }
}