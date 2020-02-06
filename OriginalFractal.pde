public void setup()
{
	size(600,600,P3D);
	shapeMode(CENTER);
}

public void draw()
{
	myFractal(300, 300, 500);
}

public void myFractal(int x, int y, int siz)
{
	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	//ellipse(x,y,siz,siz);
	//if(siz > 2 && x < 600 && y < 600)
	box() 
	{
		myFractal(x+2,y+2,siz-2);

	}
		
}