int stage = 0;
int danger = 10;

void setup() {
  size(1000, 1000);
  background(255);
}

void draw() {}

void mousePressed() {
  if(danger >= stage){
  stage++;
  background(255);
  sierpinski(mouseX, mouseY, 300, stage); 
  }
}

void sierpinski(int x, int y, int len, int level) {
  if (level == 0) {
    return;
  }

  triangle(x, y, x - len/2, y + len, x + len/2, y + len);
  
  fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  
  sierpinski(x - len/2, y + len/2, len/2, level - 1);
  sierpinski(x + len/2, y + len/2, len/2, level - 1);
  sierpinski(x, y - len/2, len/2, level - 1);
}

void keyPressed(){
  if(key == 'r'){
    stage = 0;
    background(255);
  }
}
