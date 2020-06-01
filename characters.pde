//Character Select Menu
void characters(){
  background(#9FEA5A); //Light Green
  stroke(255); //White
  strokeWeight(3); //Button Rim
  textAlign(CENTER,CENTER);
  textFont(cornerstone);
  
  fill(255);
  text("Characters",400,50); //Menu Title
  
  image(cheese,cheeseX,cheeseY,240,200); //Cheese on Bottom Left
  
  textSize(24);
  textAlign(LEFT,BOTTOM);
  text("Total Score: "+ totalScore,10,590); //Displays Total Score accumulated
  
  fill(#F7A54D);//Orange
  rectMode(CENTER);
  rect(700,550,150,50,5); //Back Button
  //Character boxes, white = character select, gray = character not selected
  if (character == 1)
    fill(255); //white
  else
    fill(50); //gray
  rect(100,250,100,100); //First Box
  if (character == 2)
    fill(255); //white
  else
    fill(50); //gray
  rect(300,250,100,100); //Second Box
  if (character == 3)
    fill(255); //white
  else
    fill(50); //gray
  rect(500,250,100,100); //Third Box
  if (character == 4)
    fill(255); //white
  else
    fill(50); //gray
  rect(700,250,100,100); //Fourth Box
  rectMode(CORNER);
  
  fill(255); //White Text
  textAlign(CENTER,CENTER);
  textSize(48);
  text(" Back", 700, 550);
  textSize(24);
  text(" Unlocked at",500,325);
  text(" 10000 points",500,350);
  text(" Unlocked at",700,325);
  text(" 20000 points",700,350);
  
  imageMode(CENTER);
  image(display1, 100, 250); //Displays 1st Character
  image(display2, 300, 250); //Displays 2nd Character
  if (totalScore >= 10000) //If Score reaches the requirements
    image(display3, 500, 250); //Displays 3rd Character
  else
    image(display5, 500, 250); //Shows Locked Character
  if (totalScore >= 20000) //If Score reaches the requirements
    image(display4, 700, 250); //Displays 4th Character
  else
    image(display5, 700, 250); //Shows Locked Character
  imageMode(CORNER);
  
  if (mousePressed){
    //If the mouse is pressed while in a button, the pressed variable is set to 1, representing that a button has been pressed
    if (mouseX >= 625 && mouseX <= 775 && mouseY >= 525 && mouseY <= 575)
      pressed = 1;
    if (mouseX >= 60 && mouseX <= 140 && mouseY >= 210 && mouseY <= 290)
      pressed = 1;
    if (mouseX >= 260 && mouseX <= 340 && mouseY >= 210 && mouseY <= 290)
      pressed = 1;
    if (mouseX >= 460 && mouseX <= 540 && mouseY >= 210 && mouseY <= 290)
      pressed = 1;
    if (mouseX >= 660 && mouseX <= 740 && mouseY >= 210 && mouseY <= 290)
      pressed = 1;
  }
  if (mousePressed == false && pressed == 1){
    //When mousePressed == false meaning the mouse was released, but pressed is 1 meaning a button was pressed before
    //The screen/character changes based on where the mouse is
    if (mouseX >= 625 && mouseX <= 775 && mouseY >= 525 && mouseY <= 575){
      screen = "levels"; //Back Button to the Levels Menu
    }
    if (mouseX >= 60 && mouseX <= 140 && mouseY >= 210 && mouseY <= 290){
      character = 1; //First Character is selected
    }
    if (mouseX >= 260 && mouseX <= 340 && mouseY >= 210 && mouseY <= 290){
      character = 2; //Second Character is selected
    }
    if (mouseX >= 460 && mouseX <= 540 && mouseY >= 210 && mouseY <= 290 && totalScore >= 10000){
      character = 3; //Third Character is selected
    }
    if (mouseX >= 660 && mouseX <= 740 && mouseY >= 210 && mouseY <= 290 && totalScore >= 20000){
      character = 4; //Fourth Character is selected
    }
    pressed = 0; //Resets pressed variable so it can be reused
  }
}
