JSONObject json;
public char rKey = rKey();
public color c = #FFFFFF;
public color g = #000000;
public int right = 0;
public int wrong = 0;

Timer timer = new Timer();
//Text start = new Text();
Text score = new Text();
Text keyText = new Text();
Text press = new Text();
Text fscore = new Text();
Text isHighScore = new Text();
LeaderBoard leaderBoard = new LeaderBoard();

public void setup() {
  size(600, 600);
  frameRate(60);
  json = loadJSONObject("data.json");
  leaderBoard.addScore(400);
}

public void draw() {
  PFont f = loadFont("CooperBlack.vlw");
  if (timer.roundEnd == false) {
    background(c); 
    fill(255); strokeWeight(7); rect(width/2-40, height/2-40, 80, 80, 7);//key rectangle
    leaderBoard.draw(f, g);
    ///*start text*/start.draw("Press the letter above to start!", width/2, height/2+100, 30, f, g, CENTER, CENTER);
    /*score*/score.draw("Score: "+(right-wrong)*100, 30, 30, 30, f, 0, LEFT, TOP);
    /*timer*/timer.draw(f);
    /*key text*/keyText.draw(str(rKey), width/2, height/2, 50, f, 0, CENTER, CENTER);
  } else {
    background(255);
    /*press key*/press.draw("Press the SPACE to continue!", width/2, height/2+100, 30, f, 0, CENTER, CENTER);
    /*final score*/fscore.draw("Final Score: "+(right-wrong)*100, width/2, height/2-30, 30, f, 0, CENTER, CENTER);
    }
}

public char rKey() {
  char c = char((int)random(97, 122));
  return c;
}


public void resetEverything() {
  c = #FFFFFF;
  g = #000000;
  right = 0;
  wrong = 0;
  timer.resetTimer();
}

public void resetJSON() {
  saveJSONObject(json, "data/data.json");
}

public void keyPressed() {
  if (timer.roundEnd == false) {
    if (key == rKey) { 
      timer.timerActive = true;
      c = #1DA00D;
      g = #1DA00D;
      right++;
      rKey = rKey();
    } 
    else if(keyCode == 109){
      //System.out.println(14);
      resetJSON();
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
    if (keyCode == 32) {
      
      resetEverything();
    }
  }
}
