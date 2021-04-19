public class Timer {
  boolean timerActive;
  int time;
  
  public Timer() {
    this.timerActive = false;
    this.time = 60;
  }
  
  public void draw(PFont f) {
    textFont(f); fill(0); textSize(30); textAlign(LEFT,TOP); text("Timer: "+time,405,30);/*timer*/
  }
  
  public void resetTimer() {
    
  }
}
