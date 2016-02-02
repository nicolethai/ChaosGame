/*
	TRY: Chaos Game	https://en.wikipedia.org/wiki/Chaos_game
*/

public int numTriangles = 20;
public void setup()
{
	size(700, 700);
	noLoop(); //stops the seizures
}
public void draw()
{
	background(0);
	sierpinski(100, 600, 500);
}
public void mouseMoved()//optional
{
	/*
	int currentX = mouseX, currentY = mouseY;	// use currect mouseX and mouseY!
	if(numTriangles > 0){
		if(mouseX > currentX){
			numTriangles++;
			System.out.println(numTriangles);
		}
		else {
			numTriangles--;
			System.out.println(numTriangles);
		}
	}
	else {
		numTriangles = 20;
	}
	*/
}

public void mouseClicked()
{
	numTriangles+=2;
}

public void sierpinski(int x, int y, int len) 
{
	if(len > numTriangles) { // len > num : num-- -> more triangles
	// BASE CLASS : Calls Sierpinski with w & h of len x3 in different places
	/*	triangle */
		sierpinski(x, y, len/2); // triangle with height and width of len/2
		sierpinski(x+(len/2), y, len/2); // triangle next to ^
		sierpinski(x+(len/4), y-(len/2), len/2); // triangle on top of two ^
	/**/

	/* FOR CHAOS GAME */

	/**/
	}
	else {
		// noFill();
		// stroke((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
		// triangle(x, y, x+(len/2), y-len, x+len, y); // triangle with height and width of len
		
		/* FOR CHAOS GAME */
		// stroke(255);
	    // triangle(x, y, x+(len/2), y-len, x+len, y); // triangle with height and width of len
	    stroke(255, 0, 0);
	    point(x+len/2, y-len/2);
		/**/
	}
}