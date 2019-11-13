// Example 10-10: The raindrop catching game

Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] baby;       // An array of drop objects
int totalDrops = 0; // totalDrops
int score = 0;

void setup() {
  size(600, 600);
  catcher = new Catcher(100); // Create the catcher with a radius of 32
  baby = new Drop[500];    // Create 1000 spots in the array
  timer = new Timer(1000);    // Create a timer that goes off every 300 milliseconds
  timer.start();             // Starting the timer
}

void draw() {
  background(255);//Pimage (background of ocean)
  textSize(20);
  text ("SCORE:  " +score,width/2, height-100);

  // Set catcher location
  catcher.setLocation(mouseX, mouseY); //supermermaid
  // Display the catcher
  catcher.display(); 

  // Check the timer
  if (timer.isFinished()) {
    // Deal with raindrops
    // Initialize one drop
    baby[totalDrops] = new Drop();
    // Increment totalDrops
    totalDrops ++ ;
    // If we hit the end of the array
    if (totalDrops >= baby.length) {
      totalDrops = 0; // Start over
    }
    timer.start();
  }

  // Move and display all drops
  for (int i = 0; i < totalDrops; i++ ) {
    baby[i].move();
    baby[i].display();
    if (catcher.intersect(baby[i])) {
      baby[i].caught();
    }
  }
  
  if(score <= 0){
    score=0;
    restart();
  }
}

void restart() {
  println("RESTART");
}
