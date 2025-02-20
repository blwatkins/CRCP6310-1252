float x;
float y;
float s;

// declaring a reference variable
int DESIGN_TOTAL = 30;
float[] xs;
float[] ys;
float[] sizes;
color[] colors;

void setup() {
  size(500, 500);
  x = random(width);
  y = random(height);
  s = random(15, 75);
  
  // instantiate the array
  xs = new float[DESIGN_TOTAL];
  ys = new float[DESIGN_TOTAL];
  sizes = new float[DESIGN_TOTAL];
  colors = new color[DESIGN_TOTAL];
  System.out.println(xs);
  System.out.println(ys);

  for (int i = 0; i < DESIGN_TOTAL; i++) {
    xs[i] = random(width);
    ys[i] = random(height);
    sizes[i] = random(5, 75);
    colors[i] = getRandomBlue();
  }
}

void draw() {
  background(255);
  design(x, y, s, color(255, 0, 0));
  
  for (int i = 0; i < DESIGN_TOTAL; i++) {
    design(xs[i], ys[i], sizes[i], colors[i]);
    xs[i] += random(-5, 5);
    ys[i] += random(-5, 5);
  }
  
  x += random(-5, 5);
  y += random(-5, 5);
}

void design(float x, float y, float s, color c) {
  strokeWeight(3);
  stroke(c);
  float r = s / 2.0;
  line(x - r, y - r, x + r, y + r);
  line(x + r, y - r, x - r, y + r);
}

color getRandomBlue() {
  int r = (int)random(125);
  int g = (int)random(125);
  int b = (int)random(150, 255);
  return color(r, g, b);
}
