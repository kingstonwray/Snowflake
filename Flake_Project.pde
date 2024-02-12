float dia, spd, spread;   
int spokes = 8;
Flake cur;  
ArrayList<Flake> flakes;

void setup() {
  size(1000, 1000);
  dia = 5;
  spd = 5;
  spread = 20; 
  flakes = new ArrayList<Flake> ();
  createAddFlake();
}

void draw() {
  translate(width/2, height/2);
  background(0);

  while (!cur.stopped() && !cur.collided()) {
    cur.move();
  }

  showFlakes();
  scale(1,-1);
  showFlakes();
  createAddFlake();
}

void keyPressed() {
  flakes.clear();
  loop();
}

void showFlakes() {
  for (int i = 0; i <= spokes; i++) {
    rotate(2*PI/spokes);

    for (Flake f : flakes) {
      f.show();
    }
  }
}

void createAddFlake() {
  if (((Math.random()*2)) >= 1) {
  cur = new Flake(width/2 - dia, 0);}
  else {cur = new Cflake();
  cur.d *= 2;
}
  flakes.add(cur);
  if (cur.collided()) flakes.clear();
}
