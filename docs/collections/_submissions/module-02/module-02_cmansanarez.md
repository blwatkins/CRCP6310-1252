---
student_name: "CMansanarez"
assignment_id: "module-02"
---

## Source Code

```java
//Grey Circle by Wasily Kandinsky

//Colors
//Cream Background (232, 223, 211) or #E8DFD3
//Light Charcoal Gray (153, 146, 133) or #999285
//Yellow Ochre (201, 175, 92) or #C9AF5C
//Scarlett Red (166, 40, 60) or #A6283C
//Cornflower Blue (77, 109, 140) or #4D6D8C
//Crimson Red (106, 32, 44) or #6A202C
//Cerulean (36, 54, 123) or #24367B
//Shadow Black (23, 30, 29) or #171E1D
//for transparent color use (#RRGGBB, alpha)

void setup() {
  size(700, 800);
  background(232,223,211);
  smooth();
  noLoop();
}

void draw() {
  //light charcoal gray circle with black stroke
  fill(153, 146, 133);
  stroke(0);
  strokeWeight(2);
  ellipse(303, 140, 180, 180);
  
  //scarlet red square
  fill(166, 40, 60);
  noStroke();
  rect(563, 283, 25, 25);

  //cerulean circle
  fill(36, 54, 123);
  noStroke();
  ellipse(555, 685, 45, 45);
 
  //crimson red arc
  fill(106, 32, 44);
  noStroke();
  arc(345, 580, 220, 220, radians(15), radians(215));
 
  //cream background circle blocking out crimson red arc
  fill(232, 223, 211);
  noStroke();
  ellipse(345, 580, 190, 190);
 
  //yellow ochre rhomboid
  fill(201, 175, 92);
  noStroke();
  quad(245, 446, 284, 497, 409, 454, 321, 380);
 
  //yellow ochre triangle
  fill(201, 175, 92, 200);
  noStroke();
  triangle(324, 536, 403, 597, 525, 175); 
 
  //cornflower blue triangle
  fill(77, 109, 140, 200);
  noStroke();
  triangle(443, 535, 80, 263, 520, 407);
 
  //shadow black rhomboid 1 - left to right
  fill(#171E1D, 240);
  noStroke();
  quad(215, 680, 50, 600, 80, 554, 224, 658);
 
  //shadow black rhomboid 2 - bottom to top
  fill(#171E1D, 240);
  noStroke();
  quad(231, 689, 214, 680, 364, 255, 385, 311);
 
  //shadow black rhomboid 3 - left to right, down
  fill(#171E1D, 240);
  noStroke();
  quad(384, 311, 364, 256, 600, 387, 600, 389);
 
  // black circle outer pie crust
  fill(#E8DFD3);
  stroke(0);
  strokeWeight(1);
  ellipse(345, 631, 46, 46);
 
  // black circle inner pie crust
  fill(#E8DFD3);
  stroke(0);
  strokeWeight(1);
  ellipse(345, 631, 38, 38);
 
  //pie cut 1, top to bottom
  stroke(0);
  strokeWeight(1);
  line(345, 612, 345, 650);
 
  //pie cut 2, left to right
  stroke(0);
  strokeWeight(1);
  line(326, 631, 364, 631);
 
  //pie cut 3; diagonal left top to right bottom
  stroke(0);
  strokeWeight(1);
  line(332, 618, 359, 645);
 
  //pie cut 4; diagonal left bottom to right top
  stroke(0);
  strokeWeight(1);
  line(332, 643, 359, 618); 
 
  //thick line top
  stroke(0);
  strokeWeight(7);
  line(430, 450, 630, 450);
 
  //thick line bottom
  stroke(0);
  strokeWeight(7);
  line(430, 475, 630, 475);
 
  //medium line bottom near blue circle
  stroke(0);
  strokeWeight(3);
  line(378, 647, 580, 654);
 
  //bottom right line section bottom to top 1
  stroke(0);
  strokeWeight(1);
  line(417, 740, 506, 545);
 
  //bottom right line section bottom to top 2
  stroke(0);
  strokeWeight(1);
  line(503, 735, 477, 554);

  //bottom right line section left to right, descending 1
  stroke(0);
  strokeWeight(1);
  line(410, 638, 540, 600);
 
  //bottom right line section left to right, descending 2
  stroke(0);
  strokeWeight(1);
  line(439, 668, 520, 680);
 
  //bottom right line section left to right, descending 3
  stroke(0);
  strokeWeight(1);
  line(431, 688, 509, 700);
  
  //bottom left line section left to right 1
  stroke(0);
  strokeWeight(2);
  line(52, 726, 192, 450);
  
  //bottom left line section left to right 2
  stroke(0);
  strokeWeight(2);
  line(89, 726, 205, 482);
  
  //bottom left line section left to right 3
  stroke(0);
  strokeWeight(2);
  line(126, 726, 228, 496);
}

void mousePressed() {
   println("mouseX: " + mouseX);
   println("mouseY: " + mouseY);
   println();
}
```
