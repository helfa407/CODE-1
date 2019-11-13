// Example 10-10: The raindrop catching game

class Drop {
  float x, y;   // Variables for location of raindrop
  float speed;  // Speed of raindrop
  color c;
  float r;      // Radius of raindrop
  int counter;

  Drop() {
    r = 8;                   // All raindrops are the same size
    x = random(width);       // Start with a random x location
    y = -r*4;                // Start a little above the window
    speed = random(1, 5);    // Pick a random speed
    c = color(50, 100, 150); // Color
    counter = 0;
  }

  // Move the raindrop down
  void move() {
    
    if(score>=10)  {
      speed = speed*1.1;
    }
    // Increment by speed
    y += speed;
    
    
  }

  // Check if it hits the bottom
  boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height -100) { 
      return true;
    } else {
      return false;
    }
  }

  // Display the raindrop
  void display() {
    // Display the drop
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++ ) {
      ellipse(x, y + i*4, i*2, i*2);
    }

    if(reachedBottom() && counter < 1) {
      score--;
      counter++;
    }
  }

  // If the drop is caught
  void caught() {
    // Stop it from moving by setting speed equal to zero
    speed = 0; 
    // Set the location to somewhere way off-screen
    y = -1500;
    score++;
  }
}
