void setup () {
  size (500, 500);
  background(100, 230, 34);

  println(width);
  println(height);
}

void draw () {
  noStroke();
  fill(30, 23, 70);
  ellipse(50, 40, 400, 400); // (x,y,width, height)

  fill(225); //white




  triangle(50, 85, 78, 40, 106, 95);  // (x1, y1, x2, y2, x3, y3)

  stroke(225);
  strokeWeight(30);

  point(width/2, height/2);

  rectMode(CENTER);
  rect(width/2, height/2, 100, 50);

  rectMode(CORNER);
  rect(width/2, height/2, 100, 50);
}
