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
	http://thatsmaths.com/2014/05/22/the-chaos-game/
*/

// public int numTriangles = 20;
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
	// numTriangles+=2;
}

public void sierpinski(int x, int y, int len) 
{
	if(len > 20) { 
		sierpinski(x+len/2, y-len/2, len/2);
	}
	else {
		strokeWeight(3);
		stroke(255);
		point(x, y);
		point(x+len/2, y-len);
		point(x+len, y);
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
