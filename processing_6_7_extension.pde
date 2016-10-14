
PFont zigBlackI;
PFont zigBlack;

void setup() {
  size(100, 100);

}

void draw() {
  background(204);
   zigBlack = createFont("Ziggurat-Black", 32);
  textFont(zigBlack);
  fill(0, 0, 255);
  text("jarrett", 0, 40);
     zigBlackI = createFont("Ziggurat-BlackItalic", 32);
  textFont(zigBlackI);
  fill(255, 0, 0);
  text("jarrett", 0, 70);
}