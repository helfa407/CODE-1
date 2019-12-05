//////
// string array
//////
String[] makeupbag = {"mascara", "concealer","bronzer","lipgloss","highlighter", "blush"};

//////
// array of shape positions
//////
int[][] shapePos = new int[6][2];

// 6 items in makeup bag, trying to get an item from the bag
// index 0,1,2 more probable to grab from bag 75% //group 1
// index 3,4,5 less probable to grab from bag 25% //group 2
// once we eiether grab more prob/less probable items, we randomly pick one

float rnum;
PImage[] photos = new PImage[6];
//{ mascara, concealer, bronzer, lipgloss, highlighter, blush };


void setup() {
  
  size(500,500);
  background(255);
  
  photos[0] = loadImage("mascara.png");
  photos[1] = loadImage("concealer.png");
  photos[2] = loadImage("bronzer.png");
  photos[3] = loadImage("lipgloss.png");
  photos[4] = loadImage("highlighter.png");
  photos[5]= loadImage("blush.png");
  
  //////
  // for loop to assign position array values
  //////
  for(int i = 0; i < makeupbag.length; i++){
    shapePos[i][0] = (80*i) + 22;// x position for index i makeup image (ex. 0 is mascara)
    //22 is offset
    shapePos[i][1] = 100;//y position for index i makeup image
  }
  
  for(int i = 0; i < makeupbag.length; i++){
    image(photos[i], shapePos[i][0], shapePos[i][1], 60, 60);
  }
  
  
  //////
  // probability to display text from array
  //////
  rnum=random(1);
  println(rnum);
  
  if (rnum > 0.75){
    println("You picked group 2"); //3,4,5
    
    int rchoice= int(random(3,6));
    println(rchoice);
    println(makeupbag[rchoice]);
    fill(0);
    textSize(16);
    text("You picked " + makeupbag[rchoice] + " from your makeup bag.", 60, height/2);
    tint(200,0, 100, 45);
    image(photos[rchoice], shapePos[rchoice][0], shapePos[rchoice][1], 60, 60);
    
    
  }else{
    println("You picked group 1"); //0,1,2
 
    int rchoice= int(random(0,3));
    println(rchoice);
    println(makeupbag[rchoice]);
    textSize(16);
    fill(0);
    text("You picked " + makeupbag[rchoice] + " from your makeup bag.", 60, height/2);
    tint(200,0, 100, 45);
    image(photos[rchoice], shapePos[rchoice][0], shapePos[rchoice][1], 60, 60);
  }
  
  
}

void draw() {
  
}
