boolean button = false;
float random_number = 0;
PFont f;
int r;
int g;
int b;
void setup() {
  fullScreen();
  textAlign(CENTER);
  f = createFont("Arial", 100, true);
}

void draw() {
  background(r, g, b);
  noFill();
  stroke(255);
  strokeWeight(10);
  rectMode(CENTER);
  rect(width / 2, height / 2, width * 0.75, height * 0.5);

  if (button) {
    random_number = random(1, 100);
  } 

  if (!button) {

    if(random_number > 50 && random_number > 0) {
      textFont(f, 100);
      fill(255);
      text("Yes", width / 2, height / 2);
      r = 73;
      g = 188;
      b = 82;
      //rgb(73, 188, 82)
    } else if (random_number <= 50 && random_number > 0) {
      textFont(f, 100);
      fill(255);
      text("No", width / 2, height / 2);
      r = 219;
      g = 82;
      b = 77;
      //rgb(219, 82, 77)
    }
  }

  if (random_number >= 0) {
    button = false;
    textFont(f, 36);
    fill(255);
    text("click to get an answer", width / 2, height * 0.8);
  }
}

void mousePressed() {
  button = true;
}
