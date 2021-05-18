public class LeaderBoard {
  public int[] arr = {0,0,0,0,0,0,0,0,0,0};
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
  
  public void addScore(int score) {
    for(int i = 0; i < arr.length; i++) {
      if(score > arr[i]) {
        int temp = arr[i];
        int temp2;
        for(int j = i; j < arr.length; j++) {
          if (j < arr.length - 1) {
            temp2 = arr[j+1];
            arr[j+1] = temp;
            temp = temp2;
          }
        }
        arr[i] = score;
        break;
      }
    }
  }
  
}
