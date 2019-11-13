int screen=0;
//------------------------------------------------------------
void setup () {
  size(500, 500);
}

//--------------------------------------------------------------
void draw() {

  switch(screen) {
  case 0:
    startScreen();
    break;
  case 1:
    gameScreen();

    break;
  case 2:
    gameOver();

    break;
  }

//------------------------------------------------------------

//-------------------------------------------------------------

}
void startScreen() {

  background(255);
  textSize(30);

  fill(0);
  text("PRESS GREEN BUTTON TO START", width/2, height/2-100);
  textAlign(CENTER);
  fill(0, 255, 0);
  ellipse(width/2, height/2, 50, 50);
}



void mousePressed() {
  
  if(screen==0){
  if (dist(mouseX, mouseY, width/2, height/2)<25) {

    println("button clicked");

    screen=1;
  }
  }

  if (screen==1) {
    if (dist(mouseX, mouseY, 100, 100)<25) {
    
      screen=2;
  
    } 
}

  }
  
  
  void gameScreen() {
  background(100);
  fill(110, 110, 20);
  ellipse(100, 100, 50, 50);
}

void  gameOver () {

  background(0, 0, 255);
  text("game over", 10, 100, 100, 100);
}
