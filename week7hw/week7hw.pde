Eye e1, e2, e3,e4,e5,e6,e7,e8,e9;

void setup() {
 
  size(500, 500);
  background(0);
  e1= new Eye(color(255, 0, 0));
  e2= new Eye(color(0, 255, 0));
  e3= new Eye(color(0, 0, 255));
  e4= new Eye(color(0, 0, 255));
  e5= new Eye(color(0, 0, 255));
  e6= new Eye(color(0, 0, 255));
  e7= new Eye(color(0, 0, 255));
  e8= new Eye(color(0, 0, 255));
  e9= new Eye(color(0, 0, 255));
  
  
  //fill(255, 0, 0);
  //ellipse(300, 300, 60, 60);
  //fill(0);
  //ellipse(300, 300, 40, 40);
  
  //what changes-> display (method), changeSize (method)
  //in constructor -> color, xpos, ypos, size
}

void draw() 
{
  background(0);
  e1.display();
  e2.display();
  e3.display();
  e4.display();
  e5.display();
  e6.display();
  e7.display();
  e8.display();
  e9.display();
  
}

void mouseClicked()

{
  e1.changeSize();
  e2.changeSize();
  e3.changeSize();
  e4.changeSize();
  e5.changeSize();
  e6.changeSize();
  e7.changeSize();
  e8.changeSize();
  e9.changeSize();
  
  e1.changeColor();
  e2.changeColor();
  e3.changeColor();
  e4.changeColor();
  e5.changeColor();
  e6.changeColor();
  e7.changeColor();
  e8.changeColor();
  e9.changeColor();
  
  
}
