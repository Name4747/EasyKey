public class LeaderBoard {
  public int[] arr = {10,9,8,7,6,5,4,3,2,1};
  public int x = 30;
  public int y = 140;
  Text text = new Text();
  Text nums = new Text();
  
  public void draw(PFont f, color c) {
    text.draw("Leaderboard:", 30, 100, 30, f, c, LEFT, TOP);
    for(int i = 0; i < 10; i++) {
      nums.draw((i+1)+". "+arr[i], x, y+(i*40), 30, f, c, LEFT, TOP);
    }
  }
  
  public int determinePosition(int score) {
    for (int j = 0; j < arr.length; j++) {
      if(score > arr[j]) {
        return j;
      }
    }
    return 0;
  }
  
}
