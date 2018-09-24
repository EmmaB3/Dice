void setup()
{
	noLoop();
}
void draw()
{
	Die d = new Die(50,50);
	d.roll();
	d.show();
	System.out.println(d.dotNum);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, dotNum;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		dotNum = (int)(Math.random() *6) + 1;
	}
	void show()
	{
		rectMode(CENTER);
		fill(244, 241, 222);
		rect(myX,myY,25,25);
		fill(0);
		if(dotNum%2 == 1){
			ellipse(myX,myY,5,5);
		}
		if (dotNum != 1){
			ellipse(myX + 10, myY - 10, 5,5);
			ellipse(myX - 10, myY + 10, 5, 5);
		}
		if(dotNum > 3){
			ellipse(myX + 10, myY + 10, 5,5);
			ellipse(myX - 10, myY - 10, 5, 5);
		}
		if(dotNum == 6){
			ellipse(myX, myY + 10, 5, 5);
			ellipse(myX,myY - 10, 5,5);
		}
	}
}
