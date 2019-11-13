void setup () {
  size (500, 500);
  background(225);
  println(width);
  println(height);
}
void draw () {
  noStroke();

  rect(100, 400, 800, 400);

  fill(225, 0, 0);
  ellipseMode(CENTER);//white c
  ellipse(168, 300, 20, 20);

  fill(118, 199, 232);
  rectMode(CENTER); //sky
  rect(100, 100, 800, 400);

  fill(96, 128, 56);
  rectMode(CENTER); //grass
  rect(100, 400, 800, 400);


  fill(0, 0, 0);
  rectMode(CENTER); //road
  rect(300, 300, 700, 300);

  fill(225, 225, 0);
  rectMode(CENTER); //road
  rect(300, 300, 600, 40);

  fill(225, 0, 0); 

  rectMode(CENTER); //MAIN BODY
  rect(width/2, height/2, 270, 100);





  fill(225, 0, 0); //TOP BODY, RED
  rectMode(CENTER); 
  rect(250, 200, 220, 125);


  fill(192, 192, 192); //FRONT WINDOW, SILVER 
  rectMode(CORNER);
  rect(280, 140, 77, 60);
  rect(200, 140, 77, 60);
  rect(143, 140, 54, 60);


  noStroke();

  fill(225, 0, 0);
  ellipseMode(CENTER);
  ellipse(168, 300, 20, 20);

  fill(128, 128, 128);//WHEEL SHADOW, GREY
  ellipse(168, 300, 60, 60); // (x,y,width, height)



  fill(0, 0, 0); // WHEEL,BLACK
  ellipse(165, 300, 60, 60);



  fill(128, 128, 128);
  ellipse(338, 300, 60, 60); // (x,y,width, height)

  fill(0, 0, 0);
  ellipse(335, 300, 60, 60);

  fill(225, 0, 0);
  stroke(0);
  rect(340, 250, 100, 10);

  fill(223, 30);
  stroke(0);
  rect(340, 235, 100, 10);
}
