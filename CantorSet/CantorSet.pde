void setup() {
  size(900, 210);
}

void draw() {
  background(0);
  cantor(35, 10, 830);
  noLoop();
}


void cantor(float x, float y, float length) {
  
  float h = 30;
  if (length >= 1) {
    noStroke();
    fill(255);
    rect(x, y, length, h/3);
    y += h;
    
    cantor(x, y, length/3);
    cantor(x + length*2/3, y, length/3);
  }
}
