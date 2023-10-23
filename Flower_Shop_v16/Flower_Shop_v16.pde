PImage img;


PImage myFlower;
PImage myPlant;
PImage myNight; 

boolean isDay = true; 

PImage mySun;
PImage myMoon;

float alpha1 = 0;  // This variable will control the transparency (0 = img, 255 = myNight).

float alpha2 = 0;  

void setup() {

  size(640, 360);
  img = loadImage("Window.jpg");
  
  myNight = loadImage ("Nighttime.jpg");
  myNight.resize(640, 360); 
  mySun = loadImage ("Sun.png"); 
  myMoon = loadImage ("Moon.png");
  imageMode (CORNER)
;}


  
 
 void draw( ) {
   
  background(0);
 
 
 if (isDay) {
   tint(255, 255 - alpha2); 
   image(img, 0, 0);
   tint(255, alpha2);
   image(mySun, 100, 10, mouseX, 100);
  } else {
     tint(255, 255 - alpha1);
    image(img, 0, 0);
    tint(255, alpha1);
    image(myMoon, 100, 10, mouseX, 100);
  }
  
  alpha1 += 1;
  
  if (alpha1 > 255) {
    alpha1 = 0;
   }
 
 
 alpha2 += 1;
    
 if (alpha2 > 255) {
      alpha2 = 0; 
     }
   }


   
void mousePressed() {
   isDay = !isDay;  // Toggle between day and night.
}

  
