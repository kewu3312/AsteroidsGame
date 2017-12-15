class Spaceship extends Floater  
{
	public Spaceship()
	{
		corners = 4;  //the number of corners, a triangular floater has 3
      	int[] allX = {-8,16,-8,-2};
      	int[] allY = {-8,0,8,0};
      	xCorners  = allX;	
      	yCorners = allY;
      	myColor = 255;
      	myCenterX = 300;
      	myCenterY = 300;
      	myDirectionX = 0;
      	myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel
      	myPointDirection = 0;
       //holds current direction the ship is pointing in degrees
	} 
	  
    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}  
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;} 
}