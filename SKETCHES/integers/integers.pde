void setup (){
}

void draw (){
  
  println(calcDistance(1,4));
}


int calcDistance(int x, int y){
 int mx= mouseX;  int my=mouseY;
 int dist = (int) sqrt(sq(x-mx)+sq(y-my)) ;
  return dist;

  
}
