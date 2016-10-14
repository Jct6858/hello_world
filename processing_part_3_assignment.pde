float mx;
float my;
float easing = 1;
int radius = 5;
int edge = 35;
int inner = edge + radius;

int x = 0;
int y = 0;
   void setup() {
     size(480, 120);
}
   void draw() {
     background(204);
     
     if(keyPressed && (key == CODED)) {  // If it’s a coded key
    if (keyCode == LEFT) {
      x--;
    } else if (keyCode == RIGHT) {
      x++;
    } 
     else if (keyCode == UP) {
      y--;
    }
    else if (keyCode == DOWN) {
      y++;
    }
}
fill(x+125, 0, y+125);
ellipse(x+240, y+60, 100, 40);
ellipse(x+290, y+45, 35, 35);
triangle(x+285, y+30, x+280, y+20, x+275, y+37);
triangle(x+300, y+30, x+305, y+37, x+302, y+25);
rect(x+200, y+60, 10, 50);
rect(x+215, y+60, 10, 50);
rect(x+250, y+60, 10, 50);
rect(x+265, y+60, 10, 50);
rect(x+280, y+35, 12, 12);
ellipse(x+285, y+40, 5, 5);
rect(x+295, y+35, 12, 12);
ellipse(x+300, y+40, 5, 5);

       if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }
  
  mx = constrain(mx, 280, 292);
  my = constrain(my, 35, 47);
  fill(x+125, 0, y+125);
 rect(x+280, y+35, 12, 12);
  fill(x+125, 0, y+125);  
  ellipse(mx, my, radius, radius);
  
       if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }
  
  mx = constrain(mx, 295, 307);
  my = constrain(my, 35, 47);
  fill(x+125, 0, y+125);
 rect (x+295, y+35, 12, 12);
  fill(x+125, 0, y+125);  
  ellipse(mx, my, radius, radius);
}