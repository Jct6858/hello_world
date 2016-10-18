float zoom = 1;
float inc = 0.05;
PImage img;
float rotate =0;
float c;

void setup() {
  size(500, 500);
  imageMode(CENTER);
  
  img = loadImage("PavelDatsyuk.jpg");

}

void draw() {
  background(200);
  translate(width>>1, height>>1);
  scale(zoom);
  rotate(rotate / 100.0);
  image(img, 0, 0);

  
  if (c >= 255)  c=0;  else  c += 1;

  if (keyPressed)
    if      (keyCode == LEFT)   zoom -= inc;
    else if (keyCode == RIGHT && zoom > 0.05)  zoom += inc;


  
  if(keyPressed){
     if (key == 'q'){
      rotate -= 20;
     }
     if (key == 'p'){
      rotate += 20;
     }
  }
  
     if (key == '1'){
       noTint();
      tint(130);
      
  }
     if (key == '2'){
      colorMode(RGB);
      noTint();
      tint(204,0,0);
      scale(0.3);
      
  }
     if (key == '3'){
       colorMode(RGB);
       noTint();
      tint(0,0,204);
      scale(0.3);
     
  }
     if (key == '4'){
       colorMode(RGB);
      noTint();
      tint(0,255,0);
      scale(0.3);
      
  }
  if (key == '5'){
      noTint();
    
  }
}