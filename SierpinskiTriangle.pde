public void setup() {  
  size(480, 480);
}

public void draw() {  
  noFill();
  strokeWeight(2);
  sierpinski(100, 400, 150);
}

public void mouseDragged() {

}
  
public void sierpinski(float x, float y, float len) {
  if(len < 5) {  
  } else {
    triangle(x, y, x+len, y, x+len/2, y-len);
    sierpinski(x, y, len/2);
    triangle(x+len, y, x+2*len, y, x+len/2+len, y-len);
    sierpinski(x+len, y, len/2);
    triangle(x+len/2, y-len, x+len+len/2, y-len, x+len, y-len-len);
    sierpinski(x+len/2, y-len, len/2);
  }
}
