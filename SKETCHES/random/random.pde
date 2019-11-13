int moveX=50;
int moveY=200;
float x=0.5;
String hello="yoooo";




void setup (){
size(800,800);
frameRate(10);

}

void draw ()
{
  background(255,moveY*-1,moveX);
 float r = random (20, 200);
  ellipse(moveX, moveY,r,r);
  moveX=moveX+1;
  moveY=moveY+1;
}
