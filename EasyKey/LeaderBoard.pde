public class LeaderBoard {
  public Score[] arr = new Score[10];
  public int x = 30;
  public int y = 140;
  Text text = new Text();
  Text nums = new Text();
  
  public void setup() {
    for(int i = 0; i < arr.length; i++){
      arr[i] = new Score(0, "aaa");
    }
  }
  
  public void draw(PFont f, color c) {
    text.draw("Leaderboard:", 30, 100, 20, f, c, LEFT, TOP);
    for(int i = 0; i < 10; i++) {
      nums.draw((i+1)+". "+arr[i].name+" "+arr[i].score, x, y+(i*40), 20, f, c, LEFT, TOP);
    }
  }
  
  public void addScore(int score, String name) {
    for(int i = 0; i < arr.length; i++) {
      if(score > arr[i].score) {
        Score temp = arr[i];
        Score temp2;
        for(int j = i; j < arr.length; j++) {
          if (j < arr.length - 1) {
            temp2 = arr[j+1];
            arr[j+1] = temp;
            temp = temp2;
          }
        }
        Score scr = new Score(score, name);
        arr[i] = scr;
        
        break;
      }
    }
  }
  
}
