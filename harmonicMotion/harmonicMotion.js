var rot=10;
function setup(){
  createCanvas(860, 540);
  background(0);
  noStroke();
  colorMode(HSB, 360, 100, 100);//set color mode to hsb
  
}

function draw(){
  var pos = map(mouseX, 50, width, 0, 500); //user input, just for fun
  background(0);
  
  push();
  translate(width/2, height/2); //set translate povar.
  rotate(radians(PI+rot));
  
  fill(0, 100, 100);//four circles with different colores
  ellipse(pos, 0, 100, 100);
  fill(90, 100, 100);
  ellipse(-pos, 0, 100, 100);
  fill(180, 100, 100);
  ellipse(0, pos, 100, 100);
  fill(270, 100, 100);
  ellipse(0, -pos, 100, 100);
  
 
  pop();
  
  rot += 15; //rotate by itself
   
}