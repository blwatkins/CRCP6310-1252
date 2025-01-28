// matrix functions
// point of origin (0, 0)
// rotation
// pushMatrix();
// translate();
// rotate();
// popMatrix();

float r1 = 0;
float r2 = 0;
float r3 = 0;

int num = 100;

void setup() {
  size(500, 500);
  // rotate() --> rotate the coordinate plane
  // around the origin point
  
  // translate() --> changing the origin point
  //num = num + 0.4;
}

void draw() {
  background(255);
  pushMatrix();
  translate(250, 250);
  rotate(radians(r1));
  rectMode(CENTER);
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(0, 0, 100, 100);
  pushMatrix();
  translate(100, 100);
  rotate(radians(r3));
  ellipse(0, 0, 25, 100);
  popMatrix();
  popMatrix();
  
  blueSquare(100, 400, 50);
  blueSquare(400, 200, 100);
  
  r1 = r1 + 0.5;
  r2 = r2 - 0.25;
  r3 = r3 + 1;
}

void blueSquare(float translateX, float translateY, float size) {
  float x = 0;
  float y = 0;
  float halfSize = size / 2.0;
  pushMatrix();
  translate(translateX, translateY);
  rotate(radians(r2));
  stroke(0, 0, 255);
  strokeWeight(5);
  noFill();
  rect(x, y, size, size);
  ellipse(x + halfSize, y + halfSize, halfSize, halfSize);
  ellipse(x - halfSize, y - halfSize, halfSize, halfSize);
  line(x + (size * 0.3), y - (size * 0.3), x - (size * 0.3), y + (size * 0.3));
  popMatrix();
}
