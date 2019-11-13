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
  rect(200,200 20,100);
  
  moveX=moveX+1;
  moveY=moveY+1;
  
  float c= random (20, 200);
  fill(0,moveX*-1,225);
  ellipse(moveX+200, moveY,c,c);
 // moveX=moveX+2;
 // moveY=moveY+2;
  
  
}
