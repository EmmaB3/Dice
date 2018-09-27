int sum;
void setup()
{
	size(501,501);
	noLoop();
}

void draw()
{
	background(0);
	sum = 0;
	for(int y = 13; y < 500; y += 25 ){
		for(int x = 13; x < 500; x += 25){
			if(x%2 == y%2){
				Die d = new Die(x,y);
				d.roll();
				d.show();
			}
		}
	}
	fill(124, 168, 87);
	textAlign(CENTER);
	textSize(50);
	text("Total: " + sum, 250, 250);
}


void firstLine(){
	for(int x = 13; x < 500; x += 25){
		Die d = new Die(x,13);
		d.roll();
		d.show();
	}
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
		sum += dotNum;
	}
	void show()
	{
		rectMode(CENTER);
		fill(244, 241, 222);
		rect(myX,myY,25,25);
		fill(0);
		if(dotNum%2 == 1){
			ellipse(myX,myY,3,3);
		}
		if (dotNum != 1){
			ellipse(myX + 7, myY - 7, 3,3);
			ellipse(myX - 7, myY + 7, 3, 3);
		}
		if(dotNum > 3){
			ellipse(myX + 7, myY + 7, 3,3);
			ellipse(myX - 7, myY -7,3, 3);
		}
		if(dotNum == 6){
			ellipse(myX, myY + 7, 3, 3);
			ellipse(myX,myY - 7, 3,3);
		}
	}
}
