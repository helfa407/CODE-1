//PRACTICE SKETCH
//by alex

int y=100 ,x=100;
//int m1=500, m2=500;
//float mini = 4.5;
//boolean isHenryHere = false;

float distance;
int xPos, yPos;
boolean isRed = false, On = false;
boolean isInShape = false;
void setup ()

{
  background (0,0,225);
  size  (500,500); // size(width, height)
  xPos = width/2;
  yPos = height/2;
  
 fill(0,0,0);
}

void draw ()
{
  //rectMode(CENTER);
  //rect(width/2-(x/2),height/2-(y/2), x,y);
  //rect(xPos, yPos, x, y);
  
  ellipse(xPos,yPos,x,y);
  //fill(random(70),random(30),random(50));
  //fill(0,0,0);
  
  //println(mouseX,  mouseY);
  
  //distance from center
  //println(abs(mouseX-xPos),  abs(mouseY-yPos));
  
  //int absolute = abs(-10);
  //print(absolute);
  
  distance = dist(mouseX, mouseY, xPos, yPos); 
  println(distance);
  
  if (distance <= 50 ) {
    isInShape=true;
  }else {isInShape=false;}
  
  println(isInShape);
  //pseudo code
  //if dist(50 or less);+
  //mousePressed then color=(255,0,0);
  
  //for holding mouse down
  // if(distance <= 50 && mousePressed && isRed){
  //  isRed = false;
  //  On = false;
  //}
  
  if(isRed) {
    fill(255,0,0);
  } else {
    fill(0,0,0);
  }
}

//single click, do something with it
void mouseClicked() {
    if(distance <= 50 && !On){
    //do something
    isRed = true;
    On = true;
  } else if(distance <= 50 && On) {
    isRed = false;
    On = false;
  }
  
  //move position as well***
}
 
