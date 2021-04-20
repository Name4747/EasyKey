public class Timer {
  boolean timerActive;
  boolean roundEnd = false;
  int time;
  
  public Timer() {
    this.timerActive = false;
    this.time = 30;
  }
  
  public void draw(PFont f) {
    textFont(f); fill(0); textSize(30); textAlign(LEFT,TOP); text("Timer: "+time,405,30);/*timer*/
    if(timerActive) {
      if(time == 0) {
        timerActive = false;
        roundEnd = true;
      }
      else if((frameCount % 60) == 0) {
        time--;
      }
    }
  }
  
  public void resetTimer() {
    
  }
}
