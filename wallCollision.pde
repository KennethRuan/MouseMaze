//Walls method adds element to the arraylist, these arrays will be iterated through for collision
//Wall{x,y,width,height}
void walls(){
  //Level 1
  //Top Left Wall
  walls1.add(new int[]{70, 0, 30, 515});
  //Bottom left wall
  walls1.add(new int[]{220, 415, 20, 185});
  //Middle Corner Shape
  walls1.add(new int[]{220, 65, 370, 20});
  walls1.add(new int[]{570, 65, 20, 250});
  //Horizontal Middle Line
  walls1.add(new int[]{220, 205, 280, 20});
  //Middle Square
  walls1.add(new int[]{300, 300, 200, 200});
  //Top Right Line
  walls1.add(new int[]{660, 0, 20, 315});
  //Bottom Right Vertical
  walls1.add(new int[]{565, 440, 20, 160});
  //Bottom Right T Piece
  walls1.add(new int[]{650, 340, 20, 200});
  walls1.add(new int[]{500, 340, 170, 10});
  
  //Wall Boundaries
  walls1.add(new int[]{-10,0,10,600});
  walls1.add(new int[]{0,-10,800,10});
  walls1.add(new int[]{800,0,10,600});
  walls1.add(new int[]{0,600,800,10});
  
  //Level 2
  //Top Left Wall
  walls2.add(new int[]{40, 0, 20, 340});
  //Bottom Square
  walls2.add(new int[]{40, 400, 130, 140});
  //Vertical Line attached to square
  walls2.add(new int[]{140, 220, 30, 220});
  //Top Square and Horizontal Line
  walls2.add(new int[]{130, 40, 190, 150});
  walls2.add(new int[]{130, 40, 405, 21});
  //Vert Line attached to Top Square
  walls2.add(new int[]{295, 170, 25, 180});
  //Horizontal Tab
  walls2.add(new int[]{140, 295, 100, 30});
  //Horizontal Tab
  walls2.add(new int[]{230, 405, 160, 30});
  //Vertical Tab
  walls2.add(new int[]{370, 40, 20, 395});

  //Horizontal Tab Bottom
  walls2.add(new int[]{160, 520, 65, 20});
  //Vertical Tab
  walls2.add(new int[]{205, 405, 25, 135});
  //Horizontal Tab
  walls2.add(new int[]{315, 470, 215, 10});
  //Vetical Tab
  walls2.add(new int[]{485, 110, 45, 370});
  //Horizontal Obstacle Walls before Cheese
  walls2.add(new int[]{530, 280, 110, 20});
  walls2.add(new int[]{580, 180, 140, 20});
  //Horizontal Tab
  walls2.add(new int[]{485, 110, 135, 20});
  //Vertical Tab
  walls2.add(new int[]{595, 0, 26, 130});
  //Bottom Horizontal Tab
  walls2.add(new int[]{290, 520, 350, 20});
  //Right Vertical Tab
  walls2.add(new int[]{630, 375, 30, 165});
  //Right Small Horizontal Tab
  walls2.add(new int[]{530, 405, 60, 30});
  //Horizontal Tab
  walls2.add(new int[]{630, 355, 80, 20});
  //Vertical Tab
  walls2.add(new int[]{695, 235, 20, 140});
  //Right Top Horizontal Tab
  walls2.add(new int[]{695, 235, 105, 20});
  //Right Bottom Horizontal Tabs
  walls2.add(new int[]{705, 505, 95, 35});
  walls2.add(new int[]{660, 445, 65, 20});
  walls2.add(new int[]{765, 355, 35, 20});
  //Top Right Vertical
  walls2.add(new int[]{715, 100, 20, 150});
  //Top Right Nib
  walls2.add(new int[]{790, 100, 10, 25});
  //Top Right Horizontal
  walls2.add(new int[]{615, 35, 140, 25});
  
  //Wall Boundaries
  walls2.add(new int[]{-10,0,10,600});
  walls2.add(new int[]{0,-10,800,10});
  walls2.add(new int[]{800,0,10,600});
  walls2.add(new int[]{0,600,800,10});
  
  //Level 3
  //Left L Piece
  walls3.add(new int[]{90,0, 10, 500});
  walls3.add(new int[]{90, 375, 95, 10});
  //Bottom Horizontal 
  walls3.add(new int[]{170, 490, 110, 10});
  //Bottom Vertical
  walls3.add(new int[]{270, 320, 10, 180});
  //Vertical Top Left
  walls3.add(new int[]{180, 0, 15, 325});
  //Middle Left Horizontal
  walls3.add(new int[]{180, 250, 180, 10});
  //Middle Upside-down J Shape
  walls3.add(new int[]{270, 150, 160, 10});
  walls3.add(new int[]{420, 150, 15, 205});
  //Middle U Shape
  walls3.add(new int[]{345, 90, 15, 350});
  walls3.add(new int[]{495, 150, 20, 290});
  walls3.add(new int[]{495, 150, 105, 20});
  walls3.add(new int[]{345, 430, 160, 10});
  //Top Middle Vertical
  walls3.add(new int[]{585, 60, 15, 170});
  //Top Middle Horizontal
  walls3.add(new int[]{420, 60, 165, 15});
  //Top Right Small J
  walls3.add(new int[]{650, 60, 65, 10});
  walls3.add(new int[]{705, 0, 10, 70});
  //Top Right Big J  
  walls3.add(new int[]{655, 110, 105, 10});
  walls3.add(new int[]{750, 35, 10, 85});
  //Top Right Nib
  walls3.add(new int[]{745, 170, 55, 10});
  //Top Right Vertical Tab
  walls3.add(new int[]{685, 110, 10, 175});
  //Middle Right Horizontal
  walls3.add(new int[]{585, 220, 50, 15});
  //Middle Right Vertical
  walls3.add(new int[]{635, 220, 15, 60});
  //Middle Right Horizontal
  walls3.add(new int[]{590, 280, 155, 10});
  //Right Vertical
  walls3.add(new int[]{735, 280, 10, 265});
  //Bottom Right Horizontal
  walls3.add(new int[]{660, 530, 85, 15});
  //Right T Shape
  walls3.add(new int[]{560, 420, 120, 15});
  walls3.add(new int[]{600, 420, 15, 180});
  //Obstacle Walls On Right T Shape
  walls3.add(new int[]{560, 330, 15, 90});
  walls3.add(new int[]{665, 290, 15, 90});
  //Middle Bottom T Shape
  walls3.add(new int[]{340, 505, 220, 10});
  walls3.add(new int[]{395, 505, 15, 95});
  
  //Wall Boundaries
  walls3.add(new int[]{-10,0,10,600});
  walls3.add(new int[]{0,-10,800,10});
  walls3.add(new int[]{800,0,10,600});
  walls3.add(new int[]{0,600,800,10});
}
