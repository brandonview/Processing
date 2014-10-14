
//Class for a laser that a Spaceship will fire

class Laser{
  
  //Coordinates for centerpoint of the laser beam. Will be determined based on location of the spaceship
  float x, y;
  
  //length and width of the laser beam
  float laserLength;
  float laserWidth;
  
  //speed in either direction for the laser beam
  float xSpeed, ySpeed;
  
  //variable for the direction of the laser. This can only be positive or negative
  boolean direction;
  
  //constructor for the laser beam
  Laser(float tempx, float tempy, float tempLaserLength, float tempLaserWidth, boolean tempDirection){
    x = tempx;
    y = tempy;
    laserLength = tempLaserLength;
    laserWidth = tempLaserWidth;
    direction = tempDirection;
  }
  
  //Method to display laser beam. It is just a 2 X 8 rectangle
  void display(){
    //set rectMode so that the rectangle is drawn from its center
    rectMode(CENTER);
    stroke(0);
    fill(255);
    
    //condition for pointing in x-direction. This can be seen if length is greater than width
    if (laserLength > laserWidth) {
      rect(x, y, laserLength, laserWidth);
    }
    
    //condition for pointing in y-direction
    else {
      rect(x, y, laserWidth, laserLength);
    }
  }
  
  //method to make the laser beam move in a straight line
  void move() {  
    //determine the xSpeed and ySpeed based on which axis the laser is moving on
    if  (laserLength > laserWidth) { xSpeed = 7; ySpeed = 0; }
    else {xSpeed = 0; ySpeed = 7; }
    
    //move laser in positive direction
    if (direction == true) {
      y += ySpeed;
      x += xSpeed;
    }
    
    //move laser in negative direction
    else {
      y -= ySpeed;
      x -= xSpeed;
    }
  }
}  
