public Spaceship daTing = new Spaceship();
public Star[] sky = new Star[100]; ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
double dist1;

public void setup() 
{
  size(600,600);
  for (int i= 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int i=0; i< 50; i++){
      rocks.add(new Asteroid());
   }
  
}
 

public void draw() 
{
	background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
     daTing.show();
  daTing.move();
  }
 
  stroke(0);
  for (Asteroid ast : rocks) 
  {
    ast.show();
    ast.move();
    dist1 = dist(ast.getX(), ast.getY(), daTing.getX(), daTing.getY());
  }
}
public void keyPressed()
{
	if (key == 'd')
	{
		daTing.turn(20);
	}
	if (key == 'a')
	{
		daTing.turn(-20);
	}
	if (key == 'w')
	{
		daTing.accelerate(0.09);
	}
	if (key == 's')
	{
		daTing.accelerate(-0.10);
	}
	if (key == 'e') //hyperspace
	{
		daTing.setPointDirection((int)(Math.random()*360));
		daTing.setDirectionX(0);
		daTing.setDirectionY(0);
		daTing.setX((int)(Math.random()*600));
		daTing.setY((int)(Math.random()*600));

	}
}