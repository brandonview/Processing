

Spaceship milleniumFalcon;


void setup(){
  size(500, 500);
  smooth();
  milleniumFalcon = new Spaceship(width/2, height/2);
}

void draw(){
  background(0);
  milleniumFalcon.move();
  milleniumFalcon.display();
}

