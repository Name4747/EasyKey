public char rKey = rKey();
public color c = #FFFFFF;
public color g = #000000;
public int right = 0;
public int wrong = 0;
public int bestScore;

Timer timer = new Timer();

public void setup() {
  size(600,600);
  frameRate(60);
}

public void draw() {
  PFont f = loadFont("CooperBlack.vlw");
  if (timer.roundEnd == false) {
    background(c);
    textFont(f); fill(g); textSize(30); textAlign(CENTER,CENTER); text("Press the letter above to start!",width/2,height/2+100);/*start text*/
    
    fill(255); strokeWeight(7); rect(width/2-40,height/2-40,80,80,7);/*key rectangle*/
    textFont(f); fill(0); textSize(30); textAlign(LEFT,TOP); text("Score: "+(right-wrong)*100,30,30);/*score*/
    textFont(f); fill(0); textSize(30); textAlign(LEFT,TOP); text("Best Score: "+bestScore,30,height-60);/*best score*/
    timer.draw(f);/*timer*/
    textFont(f); fill(0); textSize(50); textAlign(CENTER,CENTER); text(rKey,width/2,height/2);/*key*/
  }
  else{
    background(255);
    textFont(f); fill(0); textSize(30); textAlign(CENTER,CENTER); text("Press the SPACE to continue!",width/2,height/2+100);/*press key*/
    textFont(f); fill(0); textSize(30); textAlign(CENTER,CENTER); text("Final Score: "+(right-wrong)*100,width/2,height/2-30);/*final score*/
    if(isBestScore((right-wrong)*100,bestScore)){
      textFont(f); fill(0); textSize(30); textAlign(CENTER,CENTER); text("You beat the high score!",width/2,height/2+35);
    }
  }
}

public char rKey() {
  char c = char((int)random(97,122));
  return c;
}

public boolean isBestScore(int score, int bestScore) {
  if(score > bestScore) {
    return true;
  }
  return false;
}

public void resetEverything() {
  c = #FFFFFF;
  g = #000000;
  right = 0;
  wrong = 0;
  timer.resetTimer();
}

public void keyPressed() {
  if (timer.roundEnd == false){
    if (key == rKey) {
      timer.timerActive = true;
      c = #1DA00D;
      g = #1DA00D;
      right++;
      rKey = rKey();
    }
    else {
      timer.timerActive = true;
      rKey = rKey();
      c = #CE3A3D;
      g = #CE3A3D;
      wrong++;
    }
  }
  else {
    //System.out.println(keyCode);
    if(keyCode == 32) {
      if(isBestScore((right-wrong)*100,bestScore)) {
        bestScore = (right-wrong)*100;
      }
      resetEverything();
    }
  }
}
