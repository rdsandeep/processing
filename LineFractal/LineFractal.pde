void setup() {
  size(800, 600);  
}

void draw() {
  background(0);
  stroke(255);
  drawLines(200, 300, 600, 300);
  noLoop();
}

void drawLines(float x1, float y1, float x2, float y2) {
  line(x1, y1, x2, y2);
  
  float dx = x2 - x1;
  float dy = y2 - y1;
  
  if (dx == 0 && dy > 4) {
    drawLines(x1 - dy/3, y1, x1 + dy/3, y1);
    drawLines(x1 - dy/3, y2, x1 + dy/3, y2);
  } else if (dy == 0 && dx > 4) {
    drawLines(x1, y1 - dx/3, x1, y1 + dx/3);
    drawLines(x2, y1 - dx/3, x2, y1 + dx/3);
  }
}
