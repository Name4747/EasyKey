public class Text {
  public Text() { 
  }
  
  public void draw(String text, int x, int y, int size, PFont f, color c, int hAlign, int vAlign) {
    textFont(f);
    fill(c);
    textSize(size);
    textAlign(hAlign,vAlign);
    text(text,x,y);
  }
}
