//Quit Screen
void quit(){
  if (millis()-quitTime > 10000) //If the game is on the quit screen for more than 10 seconds
    exit();
  background(#9FEA5A); //Light Green
  stroke(255); //White
  strokeWeight(3); //Button Rim
  textAlign(CENTER,CENTER);
  textFont(cornerstone);
  
  image(cheese,cheeseX,cheeseY,240,200); //Cheese in Bottom Left
  
  pushMatrix(); //Mouse Image on Top Right
  translate(miceX,miceY);
  rotate(radians(-30));
  image(mouse,0,0);
  popMatrix();
  
  fill(255); //White Text
  text(" Goodbye",400,150);
  
  textSize(36);
  text("Thank you for playing Mouse Maze",400,250);
  text("by Kenneth Ruan",400,300);
  
  textSize(24);
  text("Mouse Maze is a game in which the player",400,350);
  text("attempts to guide the mouse towards the cheese",400,375);
  text("using the arrow keys and tries to avoid colliding",400,400);
  text("with the walls",400,425);
}
