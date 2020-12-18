class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myColor = color(255, 255, 255);
    myCenterX = theShip.getX();//holds center coordinates
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed(); //holds the speed of travel in the x and y directions
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection(); //holds current direction the ship is pointing in degrees
    accelerate(6.0);
  }
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getX()
  {
    return myCenterX;
  } 
  public double getY()
  {
    return myCenterY;
  } 
}
