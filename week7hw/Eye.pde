class Eye {
    color c;
    float xpos;
    float ypos;
    float size;
    
    Eye(color ic){
      c = ic;
      xpos= random (width);
      ypos= random (height);
      size=60;
    }
      
    void display (){
        fill(c);
        ellipse(xpos, ypos, size, size);
        fill(0);
        ellipse (xpos, ypos, 40, 40);
        fill(255);
        ellipse (xpos, ypos, 10, 10);
        }
    void changeSize(){
      size=random(50,100);
    }
    void changeColor(){
      c=color(random(50,255), random(50,255), random(50,255));
    }
  }
