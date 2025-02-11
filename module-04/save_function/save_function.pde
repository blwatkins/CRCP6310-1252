void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  strokeWeight(10);
  stroke(255, 175, 0);
  line(100, 100, 400, 400);
  line(100, 400, 400, 100);
}

void keyPressed() {
  if (key == ' ') {
    save("output.png");
  }
}
