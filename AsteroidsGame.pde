Spaceship bob = new Spaceship();
Star[] stars = new Star[150];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(800,800);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  for(int i = 0; i < 40; i++)
  {
    rocks.add(new Asteroid());
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
  for(int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 20)
    {
      rocks.remove(i);
    }
  }
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
