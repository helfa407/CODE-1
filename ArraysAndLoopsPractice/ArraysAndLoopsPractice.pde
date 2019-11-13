float speed=0.01;
float xPos=45;
boolean imTired = true;

void setup(){
  size(500,500);
  rectMode(CENTER);
  
}

void draw (){
  background(0);
  rectMode(CENTER);
  
  //row and column of squares and ellipses
  //for(float i=0.5; i<11.5; i++){
  //  for (float j=0.5; j<11.5; j++){  
  //  //row of our rectangles
  //    fill(255,0,0);
  //    rect(45*i,45*j,30,30);
  //    fill(0);
  //    xPos+=speed;
      
  //    ellipse(xPos*i,45*j,30,30);
  //  }
  //}
  
  
  //row of ellipses moving over row of squares
  for(int i = 1; i<11; i++) {
    fill(255,0,0);
    rect(45*i,45,30,30);
    fill(0);
    if(xPos>75) {
      //go negative
      imTired = false;
    }
    if (xPos<0){
      //go positive
      imTired = true;
    }
    
    if(imTired){
      xPos+=speed;
    } else {
      xPos-=speed;
    }
   
   
    println(xPos);
    ellipse(xPos*i,45,30,30);
    
  }
  
  //// one ellipse moving to the right:
  //xPos+=speed; //xPos = xPos+speed;
  //fill(255,0,0);
  //ellipse(xPos, 100, 75, 75);
}
