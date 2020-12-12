class Asteroid extends Floater{
  private double rotationSpeed;
  public Asteroid()
  {
    corners = 7;
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = 12;
    yCorners[0] = 5;
    xCorners[1] = 7;
    yCorners[1] = 10;
    xCorners[2] = -2;
    yCorners[2] = 12;
    xCorners[3] = -12;
    yCorners[3] = 5;
    xCorners[4] = -6;
    yCorners[4] = -10;
    xCorners[5] = 5;
    yCorners[5] = -7;
    xCorners[6] = 6;
    yCorners[6] = -6;
    myColor = color(169, 169, 169);
    myCenterX = Math.random()*800;//holds center coordinates
    myCenterY = Math.random()*800;   
    myXspeed = Math.random()*3 - 1;
    myYspeed = Math.random()*3 - 1; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    rotationSpeed = (int)Math.random()*3 - 1;
  }
  public void move()
  {
    turn(rotationSpeed);
    super.move();
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
