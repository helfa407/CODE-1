int rows, cols; 
int size = 50; 
void setup() {
  size(1000, 1000);
  rows = height/size; 
  cols = width/ size;
}

void draw() {
  noStroke();
  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      fill(random(255),random(255), random (255));
      rect(i*size, j*size, size, size);
      fill(#D5EAEA);
      rect(i*size, j*size, i*size+50, j*size, j*size+50);
    }
  }
}
