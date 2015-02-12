PImage naruto, sasuke, sakura;
float rotation = 0.0;

void setup(){
  naruto = loadImage("Naruto.png");
  naruto.resize(150, 250);
  
  sasuke = loadImage("Sasuke.png");
  sasuke.resize(150, 250);
  
  sakura = loadImage("Sakura.png");
  sakura.resize(150, 250);
  
  size(800, 800);
}


void draw(){
   background(0);
   
   imageMode(CENTER);
   
   pushMatrix();
    translate(width/2, height/2); //moves the origin
    rotate(rotation*TWO_PI/360); //rotates objects on an axis
    imageMode(CENTER);
    image(naruto, 0, 0);
   
   pushMatrix();
    rotate(rotation*TWO_PI/360); //rotates objects on an axis
    imageMode(CENTER);
    image(sasuke, 100, 150);
   popMatrix();
   
   pushMatrix();
    rotate(rotation*TWO_PI/270); //rotates objects on an axis
    imageMode(CENTER);
    image(sakura, 0, 300);
  popMatrix();
 popMatrix();
   
   rotation++;
}
