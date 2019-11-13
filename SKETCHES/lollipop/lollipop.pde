int moveX=250;
int moveY=250;
float x=0.5;
String hello="yoooo";

void setup (){
size(800,800);
frameRate(4);

}

void draw ()
{
  background(255,moveY*-1,moveX);
 float r = random (20, 200);
  
  noStroke();
  fill(256,moveX*-1,20);
  ellipse(250, 250,r,r);
  rect(250,300,5,150);

  
  moveX=moveX+1;
  moveY=moveY+1;
  
 
  fill(0,moveX*-1,225);
  ellipse(450, 250,r,r);
  rect(450,300,5,150);

  
 
if (mousePressed){
fill(255);
}
else {
  fill (126);
  
}
}
