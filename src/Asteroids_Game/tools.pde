void button(int x, int y, int w, int h, String label) {
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    stroke(0, 0, 255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
    
  fill(255);
  rect(x, y, w, h);
  fill(0);
  textSize(50);
  text(label, x, y);
}

void button(int x, int y, int w, int h, String label, int size) {
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    stroke(#DF80FF);
    strokeWeight(5);
  } else {
    stroke(#A74FC4);
    strokeWeight(3);
  }
    
  fill(255);
  rect(x, y, w, h);
  fill(#A74FC4);
  textSize(size);
  text(label, x, y);
}

boolean touchingMouse(int x, int y, int w, int h) {
  if (mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - h/2 && mouseY < y + h/2) {
    return true;
  } else {
    return false;
  }
}
