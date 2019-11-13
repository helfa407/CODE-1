int size=50;
int rows,cols;

void setup (){
  size (800,600);
  rows =height/size;
  cols=width/size;
  
  
  

}

void draw (){
  
  background (0,10,225,0);
  
  for (int i=0; i<cols; i++){ //isolate distance variable
   for(int j=0; j<rows; j++){
    float d = dist(mouseX, mouseY, i*size+size/2,j*size+size/2);
  float s= map(d, 0, width,5,size);
    int r=int(map(i,0,10,0,255));
    int b=int(map(i,0,10,225,0));
    fill(r, 0,b);
    
  
    ellipse(i*size +size/2,j*size+size/2,s,s); 
   }
  }
 }
