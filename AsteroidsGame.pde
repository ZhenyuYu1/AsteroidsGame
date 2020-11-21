Spaceship bob = new Spaceship();
Star[] stars = new Star[150];
public void setup() 
{
  size(800,800);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if(key == 'a')
  {
    bob.turn(-5);
  } else if(key == 'd'){
    bob.turn(5);
  }
    else if(key == 'w'){
    bob.accelerate(0.15);
  } else if(key == 's'){
    bob.hyperspace();
  }
}
