float x = 200;
float y = 200;
float hue = 0;
float saturation = 0;

void setup() {
  size(400, 400);

  //Enable HSB Colour model
  colorMode(HSB, 360, 100, 100);

  // white background
  background(0, 0, 100);
}

void draw() {

  stroke(hue, saturation, 90);
  
  noFill();
  for (int d = 150; d > 0; d -= 10) {
    ellipse(x, y, random(500), random(500));
  }

x = x + random(-100, 100);
y = y + random(-100, 100);

  // stop at edges
  if (x < 0) {
    x = 200;
  }
  if (y > 400) {
    y = 200;
  }
  if (x > 400) {
    x = 200;
  }
  if (y < 0) {
    y = 200;
  }

  // cycle through the hues
  hue = hue + 1;

  // cycle through saturation
  saturation = saturation + 1;

  // make sure that colour resets
  if (hue > 360) {
    hue = 0;
  }

  // make sure that saturation resets
  if (saturation > 100) {
    saturation = 0;
  }
}

// capture a screenshot
void keyPressed() {

  saveFrame("output-########.png");
}