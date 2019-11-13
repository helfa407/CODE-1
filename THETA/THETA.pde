void setup (){
  size  (600,600);
  rectMode(CENTER);
  
}
int  theta =0;
    
    
void draw (){
  background(255);
  
  noFill();
  pushMatrix();
  translate (width/2,height/2);
  theta +=1;
    ;
    
   
    scale(2);
    
    //rect(0,0,100,100);
    
    
  popMatrix();
 
 
 
 
  pushMatrix();
   translate (width/2,height/2);
   
  noFill();
   rotate(radians(+theta));
   for(int i=0; i<100; i++){
     rotate(radians(-theta+i/10));
     
    rect(mouseX,mouseY,i*10,i*2);
    
    stroke(0);
    
   }
  popMatrix();
  
  
  for(int i=0; i<45; i++){
     rotate(radians(-theta+i*1));
  
  
  } 
}
