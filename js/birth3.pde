

float eggX = 302.0;
float eggY = 350.0;
float windY = 30.0;
float windZ = 30.0;
float windX = 5.0;
String d = "help miranda protect her final egg on this windy day. Use mouse to egg to join the others";
void setup () {
  size (700, 650);
}
void draw () {
  background (192, 214, 212);
  stroke(26, 3, 250);
  //make windstrokes
  line (windX, windY, windX+100, windY);
  line (windX, windY+100, windX+175, windY+100);
  line (windX, windY+220, windX +175, windY+220);
  noFill();
  bezier(windX+ 295, windZ+60, windX+255, windZ-15, windX+85, windZ+160, windX+10, windZ+5);
  bezier(windX+250, windZ+300, windX+200, windZ+300, windX+5, windZ-30, windX-5, windZ+230);

  if (windX<550) {
    {
      windX +=0.7;
    }
    {
      windZ +=.4;
    }
  }

  //I will a cluster of 3 yellow eggs*/
  //they will be yellow*/
  smooth();
  noStroke();
  fill(225, 225, 0);
  ellipse(480, 390, 40, 58);
  //the wings//

  smooth();
  noStroke();
  fill(225, 225, 0);
  ellipse(480, 340, 40, 58);

  smooth();
  noStroke();
  fill(225, 225, 0);
  ellipse(480, 285, 40, 60);

  //i will now try to make the torso by constructing a quadrangle

  smooth();
  fill(202, 28, 211);
  quad(300, 300, 460, 330, 360, 400, 210, 390);

  noFill();
  strokeWeight(2);
  stroke(242, 135, 233);
  arc(340, 320, 80, 200, PI, TWO_PI-PI/2);
  stroke(5, 5, 5);
  arc(350, 320, 80, 200, PI, TWO_PI-PI/2);
  stroke(242, 135, 233);
  arc(360, 320, 80, 210, PI, TWO_PI-PI/2);

  //the base of the neck will be a green triangle
  fill(88, 211, 28);
  noStroke();
  triangle(170, 290, 295, 300, 208, 385); 

  //i will attempt another quadrangle for the long neck
  fill(20, 20, 20);
  quad(240, 110, 250, 100, 220, 290, 185, 274);

  //for the face i will do a triangle
  fill(245, 225, 7);
  triangle(115, 130, 240, 100, 195, 220);

  //for the beak i will do a smaller triangle

  fill(5, 5, 5);
  triangle(115, 130, 150, 120, 145, 170);

  //it needs a small eye going for a point

  strokeWeight (15);
  stroke(5, 5, 5);
  point(210, 130);

  //now some legs. straight lines will do
  strokeWeight(4);
  //back leg
  line(300, 390, 390, 500);
  //back foot
  line(390, 500, 370, 500);
  //front leg will be bent
  //thigh first
  line(300, 390, 230, 430);
  //calf 
  line(230, 430, 300, 460);
  //foot
  line(300, 460, 280, 480);
  smooth ();


  noStroke();
  ellipse (300, 350, 5, 5);
  fill(225, 225, 0);
  ellipse (eggX, eggY, 40, 60);
}

void mouseDragged() {
  eggX = mouseX;
  eggY = mouseY;
  noFill ();
  ellipse (mouseX, mouseY, 40, 60);
}





