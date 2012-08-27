
/* Simple O using text,string.
Quek Hui Xin
a0077319@nus.edu.sg 27/8/12
*/

String message = "/////////////////////////////////////////////";

PFont f;

float r = 100;

void setup() {
  size(400, 400);

  f = createFont("Georgia",30,true);
  textFont(f);
  
  textAlign(CENTER);
  smooth();
}

void draw() {
  background(255);

  translate(width / 2, height / 2);
  noFill();
  stroke(0);
  //ellipse(0, 0, r*2, r*2);

  float arclength = 0;

  for (int i = 0; i < message.length(); i++)
  {
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);

    arclength += w/2;

    float theta = PI + arclength / r;    

    pushMatrix();
    translate(r*cos(theta), r*sin(theta));
    rotate(theta+PI/2); 
    fill(0);
    text(currentChar,0,0);
    popMatrix();
    arclength += w/2;
    
     float circlelength = 0;

  }
}

