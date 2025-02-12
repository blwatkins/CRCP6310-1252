float x;
float y;
float speedX;
float speedY;

float s;

float minX;
float maxX;
float minY;
float maxY;

void setup() {
  size(500, 500);
  x = random(width);
  y = random(height);
  speedX = random(-5, 5);
  speedY = random(-5, 5);
  
  s = 100;
  
  maxX = width - (s / 2.0);
  minX = 0 + (s / 2.0);
  maxY = height - (s / 2.0);
  minY = 0 + (s / 2.0);
}

void draw() {
  background(0);
  ellipse(x, y, s, s);

  x = x + speedX;
  y = y + speedY;

  if (x >= maxX) {
    speedX = random(-5, -0.25);
    randomizeS();
  } else if (x <= minX) {
    speedX = random(0.25, 5);
    randomizeS();
  }
  
  if (y >= maxY) {
    speedY = random(-5, -0.25);
    randomizeS();
  } else if (y <= minY) {
    speedY = random(0.25, 5);
    randomizeS();
  }
  
  x = constrain(x, minX, maxX);
  y = constrain(y, minY, maxY);
}

void randomizeS() {
  s = random(25, 125);
  maxX = width - (s / 2.0);
  minX = 0 + (s / 2.0);
  maxY = height - (s / 2.0);
  minY = 0 + (s / 2.0);
}
