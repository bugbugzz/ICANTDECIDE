//because I am not capable of making choises :)
boolean button = false;
float random_number = 0;
PFont f;
int r;
int g;


void setup() {
	fullScreen();
	textAlign(CENTER);
	f = createFont("Arial",16,true);
}

void draw() {
	background(r,g,0);
	noFill();
	stroke(255);
	strokeWeight(10);
	rectMode(CENTER);
	rect(width / 2,height / 2,width * 0.75,height * 0.5);
	  
  if (button) {
		random_number = random(1, 100);         
	}   else if (!button) {
		
		if (random_number > 50 && random_number > 0) {
			textFont(f, 40);
			fill(255);
			text("Yes",width / 2,height / 2);
		    g = (150);
		    r = 0;
		} else if (random_number <= 50 && random_number > 0) {
			textFont(f, 36);
			fill(255);
			text("No",width / 2,height / 2);
		    r = (200);
		    g = 0;
		}
	}
	
	if (random_number >= 0) {
		button = false;
		textFont(f, 36);
		fill(255);
		text("click to get an answer",width / 2,height * 0.8);
		}	
}

void mousePressed() {
	button = true;
}
