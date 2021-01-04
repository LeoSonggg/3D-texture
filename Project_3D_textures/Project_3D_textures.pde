PImage diamond;
float rotx, roty, rotz;

void setup() {
  size(800, 800, P3D);
  diamond = loadImage("diamond.png");
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, 0);
  scale(200);
  rotateX(rotx);
  rotateY(roty);
  
  noStroke();
  
  textureMode(NORMAL);
  
  beginShape(QUADS);
  texture(diamond);
  
  //top
  //     x, y, z, tx,ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  
  //bottom
  //     x, y, z, tx,ty
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  
  //front
  //     x, y, z, tx,ty
  vertex(0, 0, 0, 0, 0);
  vertex(0, 1, 0, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  
  //back
  //     x, y, z, tx,ty
  vertex(0, 0, 0, 0, 0);
  vertex(0, 1, 0, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  
  //left
  //     x, y, z, tx,ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  
  //right
  //     x, y, z, tx,ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  
  endShape();
  
  
  popMatrix();
}

void mouseDragged() { 
  rotx += (pmouseY - mouseY) * 0.01; 
  roty += (pmouseX - mouseX) * -0.01;
}
