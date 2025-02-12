int totalRows;
int totalCols;

int lastRow;
int lastCol;

void setup() {
  size(500, 500);
  totalRows = (int)random(2, 20);
  totalCols = totalRows;
  lastRow = 1;
  lastCol = 1;
}

void draw() {
  background(0);
  // rows loop
  
  float h = height / (float)totalRows;
  float w = width / (float)totalCols;
  
  for (int row = 0; row < totalRows; row++) {
    for (int col = 0; col < totalCols; col++) {
      fill(255);
      ellipse((col * w) + (w / 2.0),
              (row * h) + (h / 2.0),
              w,
              h);
      
      if (row <= lastRow && col <= lastCol) {
        fill(255, 0, 0);
        ellipse((col * w) + (w / 2.0),
                (row * h) + (h / 2.0),
                (w * 0.75),
                (h * 0.75)); 
      }
    }
  }
  
  if (frameCount % 60 == 0) {
    incrementLoop(); 
  }
}

void incrementLoop() {
  lastCol++;
  
  if (lastCol > totalCols) {
    lastCol = 1;
    lastRow++;
    
    if (lastRow > totalRows) {
      lastCol = 1;
      lastRow = 1;
    }
  }
}
