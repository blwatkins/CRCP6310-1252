void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  stroke(#00B0FF);
  strokeWeight(3);
  line(0, 0, 500, 500);
  fill(56, 112, 79);
  ellipse(200, 200, 50, 50);

  // for a hex color code
  // does transparency work with #RRGGBBAA? no.
  // does transparency work with (#RRGGBB, alpha)? yes.

  fill(255);
  stroke(0);
  rect(50, 300, 400, 100);
  fill(#0BEF61);
  ellipse(100, 300, 50, 50);
  fill(#0BEF6188);
  ellipse(200, 300, 50, 50);
  fill(#0BEF61, 125);
  ellipse(300, 300, 50, 50);
}

void mousePressed() {
  println("mouseX: " + mouseX);
  println("mouseY: " + mouseY);
  println();
  println("(" + mouseX + ", " + mouseY + ")");
  println();
}
