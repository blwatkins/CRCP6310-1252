// movement with the mouse
// movement with variables
// random movement
// movement of complex shapes
// polygon
// image

float x;
float y;

float polygonX;
float polygonY;

void setup() {
  size(500, 500);
  x = 0;
  y = 0;
  
  polygonX = 250;
  polygonY = 250;
}

void draw() {
  //x = 0;
  //y = 0;
  background(255);
  //line(0, 0, mouseX, mouseY);
  //ellipse(mouseX, mouseY, 75, 75);
  cursor(mouseX, mouseY);
  rectMode(CENTER);
  noFill();
  strokeWeight(5);
  stroke(0, 0, 255);
  rect(x, y, 50, 50);
  
  someShape(polygonX, polygonY, 50);
  someOtherShape(250, 400, 50);
  
  x = x + 1;
  y = y + 0.5;
  
  polygonX = polygonX + random(-5, 5);
  polygonY = polygonY + random(-5, 5);
}

void cursor(float x, float y) {
  fill(255);
  strokeWeight(1);
  stroke(0);
  ellipse(x, y, 10, 10);
  ellipse(x + 10, y + 10, 20, 20);
  ellipse(x + 20, y + 20, 30, 30);
  ellipse(x + 30, y + 30, 40, 40);
}

void someShape(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  beginShape();
  vertex(-s, -s);
  vertex(0, -s * 1.5);
  vertex(s, -s);
  vertex(s * 1.5, 0);
  vertex(s, s);
  vertex(-s, s);
  vertex(-s * 1.5, 0);
  endShape(CLOSE);
  popMatrix();
}

void someOtherShape(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  beginShape();
  curveVertex(-s, -s);
  curveVertex(0, -s * 1.5);
  curveVertex(s, -s);
  curveVertex(s * 1.5, 0);
  curveVertex(s, s);
  curveVertex(-s, s);
  curveVertex(-s * 1.5, 0);
  endShape(CLOSE);
  popMatrix();
}

void keyPressed() {
  x = x + 1;
}
