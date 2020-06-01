//Game Instructions
void instructions(){
  background(#9FEA5A); //Light Green
  stroke(255); //White
  strokeWeight(3); //Button Rim
  textAlign(CENTER,CENTER);
  textFont(cornerstone);
  
  pushMatrix(); //Mouse on the top right
  translate(miceX,miceY);
  rotate(radians(-30));
  image(mouse,0,0);
  popMatrix();
  
  image(cheese,cheeseX,cheeseY,240,200); //Cheese on the bottom left
  
  fill(255);
  text("Instructions",400,50); 
  
  fill(#F7A54D);
  rectMode(CENTER);
  rect(400,500,250,100,5);
  rectMode(CORNER);
  
  fill(255);//White Text
  textSize(24);
  text(" Using the arrow keys direct the mouse through three",400,160);
  text(" levels of mazes to get to the cheese.",400,200);
  text(" Don't hit the walls or else you have to restart!",400,240);
  text(" The mouse will keep moving after the key is let go",400,280);
  text(" So be careful!",400,320);
  text(" Go fast though, you will get more points for a faster time!",400,360);
  text(" Press r to restart your time, and q to return to the menu.",400,400);
  textSize(48);
 
  text(" Back",400,500);
  
  if (mousePressed){
    //If the mouse is pressed while in a button, the pressed variable is set to 1, representing that a button has been pressed
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 450 && mouseY <= 550)
      pressed = 1;
  }
  if (mousePressed == false && pressed == 1){
    //When mousePressed == false meaning the mouse was released, but pressed is 1 meaning a button was pressed before
    //The screen changes based on where the mouse is
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 450 && mouseY <= 550){
      screen = "title";
    }
    pressed = 0; //Resets pressed variable when mouse is let go so the buttons can be reused
  }
}
