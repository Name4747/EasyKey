public char rKey = rKey();
public color c = #FFFFFF;
public int score = 0;

public void setup() {
  size(600,600);
  //System.out.println(); //97,122
}

public void draw() {
  background(c);
}

public char rKey() {
  char c = char((int)random(97,122));
  System.out.println(c);
  return c;
}

public void keyPressed() {
  if (key == rKey) {
    System.out.println("right");
    c = #1DA00D;
    score++;
    System.out.println("Score: "+score);
    rKey = rKey();
  }
  else {
    System.out.println("wrong");
    rKey = rKey();
    c = #CE3A3D;
  }
}

public void mousePressed() {
  //System.out.println(rKey());
}
