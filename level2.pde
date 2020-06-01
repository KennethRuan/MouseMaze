void maze2() {
  fill(255);
  //Top Left Wall
  rect(40, 0, 20, 340);
  //Bottom Square
  rect(40, 400, 130, 140);
  //Vertical Line attached to square
  rect(140, 220, 30, 220);
  //Top Square and Horizontal Line
  rect(130, 40, 190, 150);
  rect(130, 40, 405, 21);
  //Vert Line attached to Top Square
  rect(295, 170, 25, 180);
  //Horizontal Tab
  rect(140, 295, 100, 30);
  //Horizontal Tab
  rect(230, 405, 160, 30);
  //Vertical Tab
  rect(370, 40, 20, 395);

  //Horizontal Tab Bottom
  rect(160, 520, 65, 20);
  //Vertical Tab
  rect(205, 405, 25, 135);
  //Horizontal Tab
  rect(315, 470, 215, 10);
  //Vetical Tab
  rect(485, 110, 45, 370);
  //Horizontal Obstacle Walls before Cheese
  rect(530, 280, 110, 20);
  rect(580, 180, 140, 20);
  //Horizontal Tab
  rect(485, 110, 135, 20);
  //Vertical Tab
  rect(595, 0, 26, 130);
  //Bottom Horizontal Tab
  rect(290, 520, 350, 20);
  //Right Vertical Tab
  rect(630, 375, 30, 165);
  //Right Small Horizontal Tab
  rect(530, 405, 60, 30);
  //Horizontal Tab
  rect(630, 355, 80, 20);
  //Vertical Tab
  rect(695, 235, 20, 140);
  //Right Top Horizontal Tab
  rect(695, 235, 105, 20);
  //Right Bottom Horizontal Tabs
  rect(705, 505, 95, 35);
  rect(660, 445, 65, 20);
  rect(765, 355, 35, 20);
  //Top Right Vertical
  rect(715, 100, 20, 150);
  //Top Right Nib
  rect(790, 100, 10, 25);
  //Top Right Horizontal
  rect(615, 35, 140, 25);
  
  //Cheese
  image(cheeseSlice,750,175);
  
  //Wall Collision
  for (int i = 0; i < walls2.size(); i++){ //For loop that starts at 0 and goes to the end of the wall ArrayList
    if ((charX < (walls2.get(i))[0] + (walls2.get(i))[2]) && (charX+20 > (walls2.get(i))[0])){ //Does X collision detection based on coordinates retrieved from the walls ArrayList, int i changes what wall is selected
      if ((charY < (walls2.get(i))[1] + (walls2.get(i))[3]) && (charY+20 > (walls2.get(i))[1])){ //Does Y collision detection based on coordinates retrieved from the walls ArrayList, int i changes what wall is selected
        //If the user passes both checks, they have collided with a wall
        //Respawns the character
        charDir = 'd'; //Player Direction
        charX = 10; //Starting X Location
        charY = 10; //Starting Y Location
        changeX = 0; //Stops the user from continuing to move
        changeY = 0;
      }
    }
  }
  //Collision with cheese
  if (charX < 790 && charX + 20 > 750){
    if (charY < 215 && charY + 20 > 175){
      endTime = millis() - startTime; //millis() which returns the current time, is subtracted by when the user starts the level, the result is the time spent on the level
      win = true;
    }
  }
}

void level2(){
  win = false; //Variable that says if the user won yet
  background(grass); //Background
  noStroke();
  maze2(); //Loads the Maze and runs Collision Detection
  
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
    charX=10; //Start X
    charY=10; //Start Y
    changeX = 0;
    changeY = 0;
    firstPress = 0; //First key has not been pressed
  }
  //Adds the change in direction to the characters location
  charX+=changeX; 
  charY+=changeY;
  
  if (win == true){ //If the player won
    score = 100 + round(10000000/endTime); //Score Calculation based on time
    totalScore += score; //Adds score to total score
    counter = 0; //Makes it so win menu only draws once
    screen = "winMenu"; //Changes screens
  }
}
