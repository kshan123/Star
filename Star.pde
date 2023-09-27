
PVector leftEye;

void setup(){
size(300,300);
background (250, 217, 85);
leftEye = new PVector(width*.3, height*.56);
}

void draw() {
  fill(247, 206, 161);
strokeWeight(0);
arc(150, 250, 350, 350, PI, TWO_PI);

fill(155, 199, 135);
strokeWeight(0);
arc(250, 300, 150, 150, PI, TWO_PI);
fill(219, 240, 165);
strokeWeight(0);
arc(250, 310, 150, 150, PI, TWO_PI);
fill(189, 212, 131);
strokeWeight(0);
arc(150, 300, 150, 150, PI, TWO_PI);
fill(219, 240, 165);
strokeWeight(0);
arc(25, 300, 180, 150, PI, TWO_PI);
fill(155, 199, 135);
strokeWeight(0);
arc(20, 310, 180, 150, PI, TWO_PI);

  
//right part
fill(255, 92, 92,127);
strokeWeight(0);
triangle(250, 140, 220, 180, 180, 180);

strokeWeight(1);
fill(0,0,0,127);
line (185,120,215,160);

fill(0,0,0);
ellipse(185, 120, 10, 10);

//bottom
strokeWeight(0);
fill(130, 38, 39);
ellipse(200, 250, 30, 30);
strokeWeight(0);
fill(219, 90, 90);
ellipse(200, 245, 30, 30);

strokeWeight(0);
fill(73, 112, 138);
ellipse(220, 223, 15, 15);
strokeWeight(0);
fill(135, 184, 199);
ellipse(220, 220, 15, 15);

strokeWeight(0);
fill(130, 38, 39);
ellipse(40, 230, 40, 40);
strokeWeight(0);
fill(219, 90, 90);
ellipse(40, 225, 40, 40);

strokeWeight(0);
fill(73, 112, 138);
ellipse(125, 260, 35, 35);
strokeWeight(0);
fill(135, 184, 199);
ellipse(125, 255, 35, 35);

strokeWeight(0);
fill(73, 112, 138);
ellipse(70, 274, 20, 20);
strokeWeight(0);
fill(135, 184, 199);
ellipse(70, 270, 20, 20);

strokeWeight(0);
fill(130, 38, 39);
ellipse(290, 257, 60, 60);
strokeWeight(0);
fill(219, 90, 90);
ellipse(290, 250, 60, 60);

//Eyes
fill(0,0,0);
ellipse(90, 180, 100, 70);
fill(174, 199, 242);
ellipse(90, 180, 80, 80);
fill(255, 255, 255);
ellipse(90, 170, 57, 45);
fill(0,0,0);
ellipse(85, 170, 35, 35);

//stars
line(50,30,50,80);
line(30,50,80,50);
line(35,35,70,70);
line(35,70,60,40);
fill(255, 255, 255);
ellipse(60, 40, 8, 8);

line (223,90,267,35);
line (210,60,280,60);
line (230,33,265,95);
fill(0,0,0);
ellipse(210, 60, 8, 8);
fill(0,0,0);
ellipse(255, 50, 5, 5);
fill(255, 255, 255);
ellipse(265, 95, 8, 8);


  PVector mouseVector = new PVector(mouseX, mouseY);
  PVector leftPupil = leftEye.copy().add(mouseVector.copy().sub(leftEye).setMag(10));
  fill(255);
  ellipse(leftEye.x, leftEye.y, 55, 50);
  fill(0);
  ellipse(leftPupil.x, leftPupil.y, 40, 40);
  
  //star
  pushMatrix();
  translate(width*0.4, height*0.3);
  rotate(frameCount / -100.0);
  star(10, 0, 40, 15, 5); 
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
    fill(219, 146, 240);
    
  }
  endShape(CLOSE);

}

 
