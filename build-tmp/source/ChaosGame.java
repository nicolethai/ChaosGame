import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ChaosGame extends PApplet {

/*
	TRY: Chaos Game	https://en.wikipedia.org/wiki/Chaos_game
	http://www.shodor.org/interactivate/activities/TheChaosGame/
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
	sierpinski(100, 600, 100);
}
public void mouseMoved()//optional
{
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
		// sierpinski(x, y, len/2); // triangle with height and width of len/2
		sierpinski(x+(len/2), y, len/2); // triangle next to ^
		// sierpinski(x+(len/4), y-(len/2), len/2); // triangle on top of two ^
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
	    point(x, y);
	    point(x+len/2, y-len/2);
	    point(x+len, y);
		/**/
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ChaosGame" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
