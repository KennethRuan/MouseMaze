/*
Kenneth Ruan
May 24th, 2019
Ms. Basaraba
MouseMaze
Mouse Maze Game: Using the arrow keys the player directs a mouse through three levels of mazes to get to the cheese. If the player hits a wall they must restart
*/

//Variable Declaration
float charX=0,charY=0; //Character Position
float changeY=0,changeX=0; //Character Movement Speed

int titleX=400,titleY=-100; //Title Text Position, for animation
int buttonY = 800; //Title Button Position, for animation
int miceX = 1400, miceY =-950; //Title Mouse Position, for animation
int cheeseX = -400, cheeseY = 850; //Title Cheese Position, for animation

String screen = "titleAnim"; //Determines which screen the user is on
int counter = 0; //Prevents winMenu from drawing the translucent rectangle more than once

int score; //Stores the score per level
int totalScore = 0; //Stores the total score across levels
int character = 1; //Which character is used in game
char charDir; //The character's direction affects which way the sprite faces

short pressed = 0; //Checks if mouse has been pressed before, simulates mouseClicked
float startTime; //Stores the time when the user starts a level, used to calculate time taken to finish a level
float endTime; //The time it takes for a user to complete a level
int minutes, seconds; //Minutes and seconds to complete a level
int firstPress = 0; //Records if the first key has been pressed when playing a level, used to save the time of first key press
boolean win = false; //Determines whether or not to play the win screen
float quitTime; //How much time has been spent on the quit screen, closes the quit screen at 10 seconds

ArrayList <int[]> walls1 = new ArrayList<int[]>(); //ArrayList to store coordinates of walls, used to simplify collision code
ArrayList <int[]> walls2 = new ArrayList<int[]>(); //Iterate through the array and program the collision using the stored values
ArrayList <int[]> walls3 = new ArrayList<int[]>();

PFont cornerstone;
PImage mouse,cheese; //Title Animation Mouse and Cheese
PImage grass; //Grass Background
PImage cheeseSlice; //Cheese slice used as end goal in levels
PImage display1,display2,display3,display4,display5; //Mice sprites for character selection
PImage char1r,char1l,char1u,char1d; //In-game sprites for character 1, r,l,u,d -> right, left, up, down
PImage char2r,char2l,char2u,char2d; //In-game sprites for character 1, r,l,u,d -> right, left, up, down
PImage char3r,char3l,char3u,char3d; //In-game sprites for character 1, r,l,u,d -> right, left, up, down
PImage char4r,char4l,char4u,char4d; //In-game sprites for character 1, r,l,u,d -> right, left, up, down

//Setup; loading in images, fonts and wall collisions
void setup(){
  size(800,600);
  cornerstone = loadFont("Cornerstone-96.vlw");
  mouse = loadImage("mouse.png");  //Title Mouse Image
  cheese = loadImage("cheese.png"); //Title Cheese Image.
  grass = loadImage("grass.png"); //Background Grass for Levels
  display1 = loadImage("display1.png"); //Character Menu Display Mice
  display2 = loadImage("display2.png");
  display3 = loadImage("display3.png");
  display4 = loadImage("display4.png");
  display5 = loadImage("display5.png");
  cheeseSlice = loadImage("cheeseSlice.png");
  char1r = loadImage("char1r.png"); //Mouse sprites, different letters represen directions
  char1l = loadImage("char1l.png");
  char1u = loadImage("char1u.png");
  char1d = loadImage("char1d.png");
  char2r = loadImage("char2r.png");
  char2l = loadImage("char2l.png");
  char2u = loadImage("char2u.png");
  char2d = loadImage("char2d.png");
  char3r = loadImage("char3r.png");
  char3l = loadImage("char3l.png");
  char3u = loadImage("char3u.png");
  char3d = loadImage("char3d.png");
  char4r = loadImage("char4r.png");
  char4l = loadImage("char4l.png");
  char4u = loadImage("char4u.png");
  char4d = loadImage("char4d.png");
  frameRate(90);
  walls(); //Adds all the wall coordinates to an array
}

//Draw loop, displays different menu screens based on the screen variable
void draw(){
  if (screen.equals("titleAnim")) //Title Animation
    titleAnim();
  if (screen.equals("title")) //Title Screen
    title();
  if (screen.equals("levels")) //Levels Menu
    levels();
  if (screen.equals("level1")) //Level 1
    level1();
  if (screen.equals("level2")) //Level 2
    level2();
  if (screen.equals("level3")) //Level 3
    level3();
  if (screen.equals("characters")) //Character Selection Menu
    characters();
  if (screen.equals("winMenu")) //Win Menu
    winMenu();
  if (screen.equals("instructions")) //Instructions Screen
    instructions();
  if (screen.equals("quit")) //Quit Game/End Screen
    quit();
}

void titleAnim(){
  background(#9FEA5A); //Light Green
  stroke(255); //White
  strokeWeight(3); //Button Rim
  textAlign(CENTER,CENTER);
  textFont(cornerstone);
  
  if (titleY < 250) //Makes the title move
    titleY++;
  text("Mouse Maze",titleX,titleY); //Title

  image(cheese,cheeseX,cheeseY,240,200); //Cheese
  
  if(cheeseX < -30){ //Makes cheese come from bottom right
    cheeseX++;
    cheeseY--;
  }
  
  fill(#F7A54D); //Orange
  if (buttonY > 450) //Buttons move up
    buttonY--;
  rectMode(CENTER); //Buttons
  rect(150,buttonY,150,80,5);
  rect(400,buttonY,150,80,5);
  rect(650,buttonY,150,80,5);
  rectMode(CORNER);
  
  fill(255);
  textSize(20); //Button text
  text(" Play",400,buttonY);
  text(" Quit",650,buttonY);
  text(" Instructions",150,buttonY);
  
  pushMatrix(); //Title Mouse
  translate(miceX,miceY);
  rotate(radians(-30)); //Rotates the mouse at an angle
  image(mouse,0,0);
  popMatrix();
  
  if (miceX>550){ //Makes the title mouse enter from the top right
    miceX-=2;
    miceY+=2;
  }
  else
    screen = "title"; //When the mouse image is in place, changes to title screen allowing buttons to be pressed
}

void title(){
  background(#9FEA5A); //Light Green
  stroke(255); //White
  strokeWeight(3); //Button Rim
  textAlign(CENTER,CENTER);
  textFont(cornerstone);
  
  text("Mouse Maze",400,250); //Title
  
  image(cheese,cheeseX,cheeseY,240,200); // Cheese on Bottom Left
  
  fill(#F7A54D); //Orange for Butons
  rectMode(CENTER);
  rect(150,450,150,80,5); //Left Button
  rect(400,450,150,80,5); //Middle Button
  rect(650,450,150,80,5); //Right Button
  rectMode(CORNER);
  
  fill(255); //White Text
  textSize(20); 
  text(" Play",400,450); //Play Button in the Center
  text(" Quit",650,450); //Quit Button on the Right
  text(" Instructions",150,450); //Instructions Button on the Left
  
  pushMatrix(); //Mouse Image on Top Right
  translate(miceX,miceY);
  rotate(radians(-30));
  image(mouse,0,0);
  popMatrix();
  
  //Logic for Button Presses
  if (mousePressed){ 
    //If the mouse is pressed while in a button, the pressed variable is set to 1, representing that a button has been pressed
    if (mouseX >= 75 && mouseX <= 225 && mouseY >= 410 && mouseY <= 490)
      pressed = 1;
    if (mouseX >= 325 && mouseX <= 475 && mouseY >= 410 && mouseY <= 490)
      pressed = 1;
    if (mouseX >= 575 && mouseX <= 725 && mouseY >= 410 && mouseY <= 490)
      pressed = 1;
  }
  if (mousePressed == false && pressed == 1){
    //When mousePressed == false meaning the mouse was released, but pressed is 1 meaning a button was pressed before
    //The screen changes based on where the mouse is
    if (mouseX >= 75 && mouseX <= 225 && mouseY >= 410 && mouseY <= 490)
      screen = "instructions";
    if (mouseX >= 325 && mouseX <= 475 && mouseY >= 410 && mouseY <= 490)
      screen = "levels";
    if (mouseX >= 575 && mouseX <= 725 && mouseY >= 410 && mouseY <= 490){
      screen = "quit";
      quitTime = millis(); //Keeps track of when the quit screen is entered, used to exit the program
    }
    pressed = 0; //Pressed variable is reset so buttons can be used more than once
  }
}
