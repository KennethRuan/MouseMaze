//Win Menu when player reaches the cheese
void winMenu(){
  //Prevents the player from moving
  changeX = 0;
  changeY = 0;
  //Only draws once everytime the user wins, doesn't get redrawn by the draw loop
  if (counter == 0){
    counter = 1;
    fill(0,200);//Transparent background
    rect(0,0,800,600);
    fill(255); //White Text
    textSize(96);
    text("You Won!",400,100);
    textSize(48);
    text("You got to the cheese!",400,190);
    
    minutes = int((endTime/1000)/60); //Calculates the minutes used based on the milliseconds
    seconds = int((endTime/1000) % 60); //Calculates the seconds used based on milliseconds
    
    if (minutes > 0) //If the user spent more than a minute
      text("You finished the level in "+minutes+"m"+seconds+"s",400,240); 
    else //Only displays the seconds spent
      text("You finished the level in "+seconds+"s",400,240);
      
    text("Your final score is " +score,400,290); //Displays the users score
    
    fill(#F7A54D); //Orange Button
    rectMode(CENTER);
    rect(400,450,250,100,5);
    rectMode(CORNER);
    
    textAlign(CENTER,CENTER);
    fill(255); //White text
    textSize(48);
    text(" Levels",400,450);
  }
  
  if (mousePressed){
    //If the mouse is pressed while in a button, the pressed variable is set to 1, representing that a button has been pressed
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 400 && mouseY <= 500)
      pressed = 1;
  }
  if (mousePressed == false && pressed == 1){
    //When mousePressed == false meaning the mouse was released, but pressed is 1 meaning a button was pressed before
    //The screen changes based on where the mouse is
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 400 && mouseY <= 500){
      screen = "levels"; //Returns to level menu
    }
    pressed = 0; //Resets pressed variable when mouse is let go so the buttons can be reused
  }
}
