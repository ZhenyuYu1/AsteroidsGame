Spaceship bob = new Spaceship();
Star[] stars = new Star[150];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
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
  for(int i = 0; i < bullets.size(); i++)
  {
    bullets.get(i).show();
    bullets.get(i).move();
    if(bullets.get(i).getX() == 0 || bullets.get(i).getX() == 800 || bullets.get(i).getY() == 0 || bullets.get(i).getY() == 800)
    {
      bullets.remove(i);
    }
  }
  for(int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    if ((dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY())) < 20)
    {
      rocks.remove(i);
    }
    for(int j = 0; j < bullets.size(); j++)
    {
      if ((dist((float)bullets.get(j).getX(), (float)bullets.get(j).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY())) < 15)
      {
        rocks.remove(i);
        bullets.remove(j);
        break;
      }
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
    bob.accelerate(0.05);
  } else if(key == 's'){
    bob.hyperspace();
  } else if(key == ' '){
    bullets.add(new Bullet(bob));
  }
}
