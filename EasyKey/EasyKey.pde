public char rKey = rKey();
public color c = #FFFFFF;
public color g = #000000;
public int score = 0;
Timer timer = new Timer();

public void setup() {
  size(600,600);
  frameRate(60);
  //System.out.println(); //97,122
}

public void draw() {
  background(c);
  PFont f = loadFont("CooperBlack.vlw");
  //fill(0);
  //textSize(20);
  //text("SCORE",0,15);
  textFont(f); fill(g); textSize(30); textAlign(CENTER,CENTER); text("Press the letter above to start!",width/2,height/2+100);/*start text*/
  fill(255); strokeWeight(7); rect(width/2-40,height/2-40,80,80,7);/*key rectangle*/
  textFont(f); fill(0); textSize(30); textAlign(LEFT,TOP); text("Score: "+score,30,30);/*score*/
  timer.draw(f);/*timer*/
  textFont(f); fill(0); textSize(50); textAlign(CENTER,CENTER); text(rKey,width/2,height/2);/*key*/
}

public char rKey() {
  char c = char((int)random(97,122));
  //System.out.println(c);
  return c;
}

public void keyPressed() {
  if (key == rKey) {
    //System.out.println("right");
    c = #1DA00D;
    g = #1DA00D;
    score++;
    //System.out.println("Score: "+score);
    rKey = rKey();
  }
  else {
    //System.out.println("wrong");
    rKey = rKey();
    c = #CE3A3D;
    g = #CE3A3D;
  }
}
