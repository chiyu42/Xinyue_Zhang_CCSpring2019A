/*A square is divided horizontally and vertically into 
four equal parts, each with lines in four directions 
superimposed progressively. 
Section 1 (top left): vertical lines
Section 2 (top right): vertical lines, horizontal lines
Section 3 (bottom left): v-lines, h-lines, lines from top right to bottom left.
Section 4 (bottom right): v-lines, g-lines, lines all four directions.*/
int a;
void setup(){
  
  size(1000, 1000);
  rect(0, 0, 1000, 1000);//set up Square
 
}

void draw(){
     line(a, 0, a, 1000);//vertical lines, all sections
     
     line(0, a+500, 1000, a+500);
     line(500, a, 1000, a);//horizontal lines, section 2, 3, 4
     
     line(a, 500, 0, a+500);//lines from top right to bottom left, section 3, 4
     
     line(a+500, 500, 1000, 1000-a);
     line(500, a+500, 1000-a, 1000);//lines from top left to bottom right, section 4.
     
     a = a+20;

   
 }

 
  
