class Cflake extends Flake {
  float r, g, b;


  Cflake() {
    r = (float)(Math.random()*256);
    g = (float)(Math.random()*256);
    b = (float)(Math.random()*256);
    d *= 2;
  }

  void show() {
    fill(r, g, b);
    stroke(r, g, b);
    ellipse(x, y, d, d);
  }
}
