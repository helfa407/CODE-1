float xPos=100, yPos=100;
float xSpeed, ySpeed;
int size =50;

void setup(){
  
  size (600,600);
  xSpeed=random (2,5);
  ySpeed=random (-2,2);
  
}

void draw (){
  
 int  g, b=0;
 b= int(map(yPos,0, height, 255,175));
 g= int(map(yPos,0, height, 255,175));
 
 
 


 background(255,g,b);

  xPos +=xSpeed;
  yPos +=ySpeed;
  
  //if my ellipse goes further than the right side 
  //of my screen, reset
  
  if(xPos > width-size/2|| xPos  < size/2){
    xSpeed = -xSpeed;
  }
  
  if (yPos > height-size/2 || yPos < size/2){
    ySpeed = -ySpeed;
    
  }
    
    //if mouse pressed pause ellipse
    
   {if (mousePressed) speed=0
   
  }
    
  ellipse(xPos, yPos, size, size);
  
}
