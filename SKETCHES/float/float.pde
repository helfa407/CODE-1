void setup (){
}

void draw (){
  
  println(calcDistance(1.1,4.5));
}



float calcDistance(float x, float y){
  float dist = sqrt(sq(x-mouseX)+sq(y-mouseY)) ;
  return dist;

  
}
