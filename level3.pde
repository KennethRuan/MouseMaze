void maze3() {
  fill(255);
  //Left L Piece
  rect(90,0, 10, 500);
  rect(90, 375, 95, 10);
  //Bottom Horizontal 
  rect(170, 490, 110, 10);
  //Bottom Vertical
  rect(270, 320, 10, 180);
  //Vertical Top Left
  rect(180, 0, 15, 325);
  //Middle Left Horizontal
  rect(180, 250, 180, 10);
  //Middle Upside-down J Shape
  rect(270, 150, 160, 10);
  rect(420, 150, 15, 205);
  //Middle U Shape
  rect(345, 90, 15, 350);
  rect(495, 150, 20, 290);
  rect(495, 150, 105, 20);
  rect(345, 430, 160, 10);
  //Top Middle Vertical
  rect(585, 60, 15, 170);
  //Top Middle Horizontal
  rect(420, 60, 165, 15);
  //Top Right Small J
  rect(650, 60, 65, 10);
  rect(705, 0, 10, 70);
  //Top Right Big J  
  rect(655, 110, 105, 10);
  rect(750, 35, 10, 85);
  //Top Right Nib
  rect(745, 170, 55, 10);
  //Top Right Vertical Tab
  rect(685, 110, 10, 175);
  //Middle Right Horizontal
  rect(585, 220, 50, 15);
  //Middle Right Vertical
  rect(635, 220, 15, 60);
  //Middle Right Horizontal
  rect(590, 280, 155, 10);
  //Right Vertical
  rect(735, 280, 10, 265);
  //Bottom Right Horizontal
  rect(660, 530, 85, 15);
  //Right T Shape
  rect(560, 420, 120, 15);
  rect(600, 420, 15, 180);
  //Obstacle Walls On Right T Shape
  rect(560, 330, 15, 90);
  rect(665, 290, 15, 90);
  //Middle Bottom T Shape
  rect(340, 505, 220, 10);
  rect(395, 505, 15, 95);
  
  //Cheese
  image(cheeseSlice,370,170);
  
  //Wall Collision
  for (int i = 0; i < walls3.size(); i++){ //For loop that starts at 0 and goes to the end of the wall ArrayList
    if ((charX < (walls3.get(i))[0] + (walls3.get(i))[2]) && (charX+20 > (walls3.get(i))[0])){ //Does X collision detection based on coordinates retrieved from the walls ArrayList, int i changes what wall is selected
      if ((charY < (walls3.get(i))[1] + (walls3.get(i))[3]) && (charY+20 > (walls3.get(i))[1])){ //Does Y collision detection based on coordinates retrieved from the walls ArrayList, int i changes what wall is selected
        //If the user passes both checks, they have collided with a wall
        //Respawns the character
        charDir = 'd'; //Player Direction
        charX = 130; //Starting X Location
        charY = 20; //Starting Y Location
        changeX = 0; //Stops the user from continuing to move
        changeY = 0;
      }
    }
  }
  //Collision with cheese
  if (charX < 410 && charX + 20 > 370){
    if (charY < 210 && charY + 20 > 170){
      endTime = millis() - startTime; //millis() which returns the current time, is subtracted by when the user starts the level, the result is the time spent on the level
      win = true;
    }
  }
}

void level3(){
  win = false; //Variable that says if the user won yet
  background(grass); //Background
  noStroke();
  maze3(); //Loads the Maze and runs Collision Detection
  
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
    charX=130; //Start X
    charY=20; //Start Y
    changeX = 0;
    changeY = 0;
    firstPress = 0; //First key has not been pressed
  }
  //Adds the change in direction to the characters location
  charX+=changeX; 
  charY+=changeY;
  
  if (win == true){ //If the player won
    score = 1500 + round(100000000/endTime); //Score Calculation based on time
    totalScore += score; //Adds score to total score
    counter = 0; //Makes it so win menu only draws once
    screen = "winMenu"; //Changes screens
  }
}
