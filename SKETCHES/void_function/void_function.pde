void setup(){
  
  background(225,30,255);
  size(500,500);
  
  
}


void draw (){
  
  background(225,30,255);
  mycoolfunction(mouseX,mouseY);
  
}

void mycoolfunction(float x,float y){
 
 fill(255,67,34);
 rect(x, y, 100,100);
 
 fill(34,random(255),12);
 ellipse(x-random(100),y-random(100),100,100);
 
 
 
 
  
  
}
