
//space ship class

class Spaceship{
  
  //x and y variables of center of spaceship
  float x, y;
  
  //variables for speed in x and y direction
  float xSpeed, ySpeed;
  
  //create a single laser for this spaceship
  Laser myLaser;
  
  //constructor with all properties
  Spaceship(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }
  
  boolean getDirection(){
    //get direction of spaceship
    boolean direction;
    if (xSpeed > 0 || ySpeed > 0){
      direction = true;
    }
    else {
      direction = false;
    }
    return direction;
  }
  
  void fireLaser() {
    
    //laser if spaceship moving in the x-direction
    if (xSpeed != 0){
      myLaser = new Laser(x+20, y, 8, 2, getDirection());
    }
    
    //laser if spaceship moving in the y- direction
    else {
      myLaser = new Laser(x, y, 2, 8, getDirection());
    }
    
    myLaser.move();
    myLaser.display();
  }
  
  //Function to define what happens if direction keys are pressed
  void keyPressed(){
    if(key==CODED){
      if(keyCode==UP){
        ySpeed = -3;
        xSpeed = 0;
        println("Turning UP");
      }
      if(keyCode==DOWN){
        ySpeed = 3;
        xSpeed = 0;
        println("Turning DOWN");
      }
      if(keyCode==LEFT){
        xSpeed = -3;
        ySpeed = 0;
        println("Turning LEFT");
      }
      if(keyCode==RIGHT){
        xSpeed = 3;
        ySpeed = 0;
        println("Turning RIGHT");
      }
    }
  }
  
  //method to move the spaceship based on the key that is pressed
  void move() {
    keyPressed();
    x += xSpeed;
    if (x > width) {
      x = 0;
    }
    if (x < 0){
      x = width;
    }
    y += ySpeed;
    if (y > height) {
      y = 0;
    }
    if (y < 0) {
      y = height;
    }
  }
  //Display spaceship
  void display(){
    stroke(0);
    fill(255);
    ellipseMode(CENTER);

    fill(255);
    ellipse(x, y, 20, 20);
  }
}
