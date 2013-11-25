Snow[] s = new Snow[10];

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < s.length; i++) {
    s[i] = new Snow();
  }
}

void draw() {
  background(240, 100, 20);
  for (int i = 0; i < s.length; i++) {
    s[i].display();
    s[i].drop();
  }
}

