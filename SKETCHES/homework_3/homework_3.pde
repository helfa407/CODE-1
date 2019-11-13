float xPos, yPos;
int size=400;
int r, g, b;

void setup() {
  size(800, 800);
  xPos=width/2;
  yPos=height/2;
  noStroke();
  
 
}
void draw() {
if (calcDist(xPos, yPos)< size/2) 
   background(random(0,255), random (0,225), random (0,225));
  else {
    background(0,0,0);
  }

  fill(b, g, r);
  r= int(map(mouseX, 0, width, 100, 255));
  b= int(map(mouseY, 0, height, 100, 255));
  
  
  ellipse(xPos, yPos, size, size);
  
  translate(50, 50);
stroke(255, 0, 0);
beginShape();
// Exterior part of shape, clockwise winding
vertex(r, -40);
vertex(r, -40);
vertex(r, 40);
vertex(r, 40);
// Interior part of shape, counter-clockwise winding
beginContour();
vertex(xPos, -20);
vertex(yPos, 20);
vertex(xPos, 20);
vertex(yPos, -20);
endContour();
endShape(CLOSE);

vertex(r-2, b-9);
vertex(r-4,  b+9);
vertex(r-6, b-9);
vertex(r-8, b+9);

if (calcDist(xPos, yPos)< size/2) 
   background(random(9,255), random (4,225), random (78,225));
  else
  



  rect(30, 20, 50, 50); 

  line(20, 10, 90, 80); 
  line(20, 80, 90, 10); 
  

} 
  
  {
  }





float calcDist(float x, float y) {
  float dist = sqrt(sq(x-mouseX)+sq(y-mouseY)) ;
  return dist;
}
