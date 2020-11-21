class Star
{
  private int myColor;
  private int myX;
  private int myY;
  private double mySize;
  public Star()
  {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    mySize = (Math.random()*5) + 1;
  }
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, (float)mySize, (float)mySize);
  }
}
