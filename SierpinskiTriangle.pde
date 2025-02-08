public int stage = 0;
public int danger = 10;

public void setup() {
  size(1000, 1000);
  background(255);
}

public void draw() {}

public void mousePressed() {
  if(danger >= stage){
  stage++;
  background(255);
  sierpinski(mouseX, mouseY, 300, stage); 
  }
}

public void sierpinski(int x, int y, int len, int level) {
  if (level == 0) {
    return;
  }

  triangle(x, y, x - len/2, y + len, x + len/2, y + len);
  
  fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  
  sierpinski(x - len/2, y + len/2, len/2, level - 1);
  sierpinski(x + len/2, y + len/2, len/2, level - 1);
  sierpinski(x, y - len/2, len/2, level - 1);
}

public void keyPressed(){
  if(key == 'r'){
    stage = 0;
    background(255);
  }
}
