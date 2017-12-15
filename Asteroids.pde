class Asteroid extends Floater
{
	protected int spin;
  public Asteroid(){
      corners = 12;  //the number of corners, a triangular floater has 3
      int[] allX = {-12,-8,8,12,8,-8,0,8,8,0,-8,-8};
      int[] allY = {0,8,8,0,-8,-8,-12,-8,8,12,8,-8};
      xCorners  = allX;
      yCorners = allY;
      myColor = ((int)(Math.random()*256));
      myCenterX = ((int)(Math.random()*900));
      myCenterY = ((int)(Math.random()*900)); 
      myPointDirection = ((Math.random()*10)-10); 
      myDirectionX = ((int)(Math.random()*2)-1);
      myDirectionY = ((int)(Math.random()*2-1)); //holds x and y coordinates of the vector for direction of travel
      spin = ((int)(Math.random()*9)-2);
  } 
  public void move()
  {
    turn(spin);
    if (spin == 0){spin = 1;}
    super.move();
    if (myDirectionX == 0 || myDirectionY == 0)
    {
      myDirectionX = 1;
      myDirectionY = 1;
    } 
  }
  public void setX(int x){
      myCenterX = x;
   }
   public int getX(){
    return (int)myCenterX;
   }
   public void setY(int y)
   {
      myCenterY = y;
   }
    public int getY(){
      return (int)myCenterY;
    }
   public void setDirectionX(double x){
      myDirectionX = x;
   }
   public double getDirectionX(){
      return (double)myDirectionX;
   }
   public void setDirectionY(double y)
   {
     myDirectionY = y;
   }
   public double getDirectionY()
   {
      return (double)myDirectionY;
   }
  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }
  public double getPointDirection()
  {
    return (double)myPointDirection;
  }
}