void setup() {
  size(500, 500);
  background(225);
  println(distance(67, 56, 34, 34));
}

void draw () {
}




float distance (float x1, float x2, float x3, float x4 ) {
  float sum=sqrt(sq(x1-x2)+sq(x3-x4));
  return sum;
}
