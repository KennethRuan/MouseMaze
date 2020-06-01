void maze1() {
  fill(255);
  //Walls of the Maze
  //Top Left Wall
  rect(70, 0, 30, 515);
  //Bottom left wall
  rect(220, 415, 20, 185);
  //Middle Corner Shape
  rect(220, 65, 370, 20);
  rect(570, 65, 20, 250);
  //Horizontal Middle Line
  rect(220, 205, 280, 20);
  //Middle Square
  rect(300, 300, 200, 200);
  //Top Right Line
  rect(660, 0, 20, 315);
  //Bottom Right Vertical
  rect(566, 439, 20, 160);
  //Bottom Right T Piece
  rect(650, 340, 20, 200);
  rect(500, 340, 170, 10);
  
  //Cheese
  image(cheeseSlice,720,0);
  
  //Wall Collision
  for (int i = 0; i < walls1.size(); i++){ //For loop that starts at 0 and goes to the end of the wall ArrayList
    if ((charX < (walls1.get(i))[0] + (walls1.get(i))[2]) && (charX+20 > (walls1.get(i))[0])){ //Does X collision detection based on coordinates retrieved from the walls ArrayList, int i changes what wall is selected
      if ((charY < (walls1.get(i))[1] + (walls1.get(i))[3]) && (charY+20 > (walls1.get(i))[1])){ //Does Y collision detection based on coordinates retrieved from the walls ArrayList, int i changes what wall is selected
        //If the user passes both checks, they have collided with a wall
        //Respawns the character
        charDir = 'd'; //Player Direction
        charX = 25; //Starting X Location
        charY = 25; //Starting Y Location
        changeX = 0; //Stops the user from continuing to move
        changeY = 0;
      }
    }
  }
  //Collision with cheese
  if (charX < 760 && charX + 20 > 720){
    if (charY < 40 && charY + 20 > 0){
      endTime = millis() - startTime; //millis() which returns the current time, is subtracted by when the user starts the level, the result is the time spent on the level
      win = true;
    }
  }
}

void level1(){
  win = false; //Variable that says if the user won yet
  background(grass); //Background
  noStroke();
  maze1(); //Loads the Maze and runs Collision Detection
  
  //Loads images based on character selected
  if (character == 1){ //Character 1
    //Loads images based on character direction
    if (charDir == 'd') //Down
      image(char1d,charX,charY);
    if (charDir == 'u') //Up
      image(char1u,charX,charY);
    if (charDir == 'l') //Left
      image(char1l,charX,charY);
    if (charDir == 'r') //Right
      image(char1r,charX,charY);
  }
  
  if (character == 2){ //Character 2
    //Loads images based on character direction
    if (charDir == 'd') //Down
      image(char2d,charX,charY);
    if (charDir == 'u') //Up
      image(char2u,charX,charY);
    if (charDir == 'l') //Left
      image(char2l,charX,charY);
    if (charDir == 'r') //Right
      image(char2r,charX,charY);
  }
  
  if (character == 3){ //Character 3
    //Loads images based on character direction  
    if (charDir == 'd') //Down
      image(char3d,charX,charY);
    if (charDir == 'u') //Up
      image(char3u,charX,charY);
    if (charDir == 'l') //Left
      image(char3l,charX,charY);
    if (charDir == 'r') //Right
      image(char3r,charX,charY);
  }
  
  if (character == 4){ //Character 4
    //Loads images based on character direction
    if (charDir == 'd') //Down
      image(char4d,charX,charY);
    if (charDir == 'u') //Up
      image(char4u,charX,charY);
    if (charDir == 'l') //Left
      image(char4l,charX,charY);
    if (charDir == 'r') //Right
      image(char4r,charX,charY);
  }
  
  if(keyPressed && firstPress == 0){ //When the first key is pressed
    firstPress = 1; //Keys after are no longer the first
    startTime = millis(); //Saves when the user starts the level to startTime
  }
  if(keyPressed && keyCode == UP){ //If Up Key is Pressed 
    changeX= 0; //Movement in the X Direction
    changeY=-2.5; //Movement in the Y Direction
    charDir = 'u'; //Player Direction
  }
  if(keyPressed && keyCode == DOWN){ //If Down Key is Pressed 
    changeX=0; //Movement in the X Direction
    changeY=2.5; //Movement in the Y Direction
    charDir = 'd'; //Player Direction
  }
  if(keyPressed && keyCode == RIGHT){ //If Right Key is Pressed 
    changeY=0; //Movement in the Y Direction
    changeX=2.5; //Movement in the X Direction
    charDir = 'r'; //Player Direction
  }
  if(keyPressed && keyCode == LEFT){ //If Left Key is Pressed 
    changeY=0; //Movement in the Y Direction
    changeX=-2.5; //Movement in the X Direction
    charDir = 'l'; //Player Direction
  }
  if(keyPressed && key == 'q'){ //If q is Pressed 
    screen = "levels"; //Returns to the levels menu
  }
  if(keyPressed && key == 'r'){ //If r is pressed
    //restarts the level
    charDir = 'd'; //Player Direction
    charX=25; //Start X
    charY=25; //Start Y
    changeX = 0;
    changeY = 0;
    firstPress = 0; //First key has not been pressed
  }
  //Adds the change in direction to the characters location
  charX+=changeX; 
  charY+=changeY;
  
  if (win == true){ //If the player won
    score = 40 + round(1000000/endTime); //Score Calculation based on time
    totalScore += score; //Adds score to total score
    counter = 0; //Makes it so win menu only draws once
    screen = "winMenu"; //Changes screens
  }
}
