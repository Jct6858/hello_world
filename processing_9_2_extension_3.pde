   JitterBug jit;
   JitterBug bug;
   JitterBug beetle;
   
   void setup() {
     size(480, 120);
     smooth();
     jit = new JitterBug(width * 0.33, height/2, 50);
     bug = new JitterBug(width * 0.66, height/2, 10);
     beetle = new JitterBug(width * .5, height * .5, 30);
}
   void draw() {
     jit.move();
     jit.display();
     bug.move();
     bug.display();
     beetle.move();
     beetle.display();
}
   // Put a copy of the JitterBug class here
   class JitterBug {
     float x;
     float y;
     int diameter;
     float speed = 2.5;
     JitterBug(float tempX, float tempY, int tempDiameter) {
       x = tempX;
       y = tempY;
       diameter = tempDiameter;
}
     void move() {
       x += random(-speed, speed);
       y += random(-speed, speed);
}
     void display() {
       triangle(x, y, x+5, y+5, x+10, y);
} }
