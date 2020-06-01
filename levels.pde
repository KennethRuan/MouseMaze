//Levels Menu
void levels(){ 
  background(#9FEA5A); //Light Green
  stroke(255); //White
  strokeWeight(3); //Button Rim
  textAlign(CENTER,CENTER);
  textFont(cornerstone);
  
  fill(255); //White Text
  text("Levels",400,50);
  
  pushMatrix(); //Mouse on Top Right
  translate(miceX,miceY);
  rotate(radians(-30));
  image(mouse,0,0);
  popMatrix();
  
  image(cheese,cheeseX,cheeseY,240,200); //Cheese on Bottom Left
  
  textSize(24); 
  textAlign(LEFT,BOTTOM);
  text("Total Score: "+ totalScore,10,590); //Displays Total Score accumulated over playing
  
  fill(#F7A54D); //Buttons
  rectMode(CENTER);
  rect(400,200,250,100,5); //Level 1
  rect(400,350,250,100,5); //Level 2
  rect(400,500,250,100,5); //Level 3
  rect(700,475,150,50,5); //Characters Menu
  rect(700,550,150,50,5); //Back Button
  rectMode(CORNER);
  
  //Text for Buttons
  textAlign(CENTER,CENTER);
  fill(255); //White Text
  textSize(48);
  text(" Level 1",400,200);
  text(" Level 2",400,350);
  text(" Level 3",400,500);
  textSize(24);
  text(" Characters", 700, 475);
  text(" Back", 700, 550);
  
  if (mousePressed){
    //If the mouse is pressed while in a button, the pressed variable is set to 1, representing that a button has been pressed
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 150 && mouseY <= 250)
      pressed = 1;
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 300 && mouseY <= 400)
      pressed = 1;
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 450 && mouseY <= 550)
      pressed = 1;
    if (mouseX >= 625 && mouseX <= 775 && mouseY >= 450 && mouseY <= 500)
      pressed = 1;
    if (mouseX >= 625 && mouseX <= 775 && mouseY >= 525 && mouseY <= 575)
      pressed = 1;
  }
  if (mousePressed == false && pressed == 1){
    //When mousePressed == false meaning the mouse was released, but pressed is 1 meaning a button was pressed before
    //The screen changes based on where the mouse is
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 150 && mouseY <= 250){
      firstPress = 0; //Variable to check if a key has been pressed after starting the level
      charDir = 'd'; //Character's Direction
      screen = "level1"; //Screen
      charX = 25; //Player's starting X
      charY = 25; //Player's Starting Y
      changeX = 0; //Movement in the X direction
      changeY = 0; //Movement in the Y direction
    }
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 300 && mouseY <= 400){
      firstPress = 0; //Variable to check if a key has been pressed after starting the level
      charDir = 'd'; //Character's Direction
      screen = "level2"; //Screen
      charX = 10; //Player's starting X
      charY = 10; //Player's Starting Y
      changeX = 0; //Movement in the X direction
      changeY = 0; //Movement in the Y direction
    }
    if (mouseX >= 275 && mouseX <= 525 && mouseY >= 450 && mouseY <= 550){
      firstPress = 0; //Variable to check if a key has been pressed after starting the level
      charDir = 'd'; //Character's Direction
      screen = "level3"; //Screen
      charX = 130; //Player's starting X
      charY = 20; //Player's Starting Y
      changeX = 0; //Movement in the X direction
      changeY = 0; //Movement in the Y direction
    }
    if (mouseX >= 625 && mouseX <= 775 && mouseY >= 450 && mouseY <= 500){
      screen = "characters"; //Character Selection Screen
    }
    if (mouseX >= 625 && mouseX <= 775 && mouseY >= 525 && mouseY <= 575){
      screen = "title"; //Back Button to the Title
    }
    pressed = 0; //Pressed variable is reset so buttons can be used more than once
  }
}
