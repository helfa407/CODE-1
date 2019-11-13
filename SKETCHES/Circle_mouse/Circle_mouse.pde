
float xPos, yPos;
int size=50;
int r, g, b;

void setup() {
  size(800, 800);
  xPos=width/2;
  yPos=height/2;
  noStroke();
}
void draw() {


  if (calcDist(xPos, yPos) < size/2 && mousePressed) {
   background(random(0,255), random (0,225), random (0,225));
  } else {
    background(0,0,0);
  }

  fill(b, g, r);
  r= int(map(mouseX, 0, width, 100, 255));
  b=int(map(mouseY, 0, height, 100, 255));
  g=int(map(mouseY, 0, height, 100, 255));
  
  ellipse(xPos, yPos, size, size);
}

float calcDist(float x, float y) {
  float dist = sqrt(sq(x-mouseX)+sq(y-mouseY)) ;
  return dist;
}
