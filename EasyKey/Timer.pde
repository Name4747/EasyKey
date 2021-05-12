public class Timer {
  public boolean timerActive;
  public boolean roundEnd = false;
  public int time;
  public int timeLength = 30;
  
  public Timer() {
    this.timerActive = false;
    this.time = timeLength;
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
    timerActive = false;
    time = timeLength;
    roundEnd = false;
  }
}
