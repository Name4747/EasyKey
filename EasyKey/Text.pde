public class Text {
  public PFont f;
  public color c;
  public int x, y, size;
  public String text;
  public char vAlign, hAlign;
  
  public Text(String text, int x, int y, int size, color c, PFont f, char hAlign, char vAlign) {
    this.text = text;
    this.x = x;
    this.y = y;
    this.size = size;
    this.c = c;
    this.f = f;
    this.hAlign = hAlign;
    this.vAlign = vAlign;
  }
  
  public void draw() {
    textFont(f);
    fill(c);
    textSize(size);
    textAlign(hAlign,vAlign);
    text(text,x,y);
  }
  
}
