
static class Vector2D{
  public float x = 0;
  public float y = 0;

  public Vector2D(){    

  }
  
  public Vector2D(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  /*static and nonstatic method to add two vectors togrther*/
  public void add(Vector2D other){
    this.x += other.x;
    this.y += other.y;
  }
 
 
  public Vector2D add(Vector2D v1, Vector2D v2){
    Vector2D result = new Vector2D(v1.x + v2.x, v1.y + v2.y);
    return result;
  }     
}
