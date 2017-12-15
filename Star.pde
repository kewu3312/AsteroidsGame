
class Star
{
  private int myX, myY;
  Star() {
    myX = (int)(Math.random()*601);
    myY = (int)(Math.random()*601);
  }
  public void show() {
    fill((int)(Math.random()*255));
    ellipse(myX, myY, 2, 2);
  }
}