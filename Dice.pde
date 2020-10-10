 int dieSum = 0;
 void setup()
  {
      size(400, 600);
      noLoop();
      background(134,136,138);
  }
  void draw()
  {
    for(int x = 25; x < 350;x = x + 60)
    {
      for(int y = 25; y < 400; y = y + 60)
      { 
    Die nev = new Die(x,y);
    nev.show();
    nev.roll();
    nev.sum();
      } 
    }
  }
  void mousePressed()
  {
    redraw();
    dieSum = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int numDots, myX, myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll()
      {
      numDots = (int)((Math.random() * 6) + 1);
      noStroke();
      fill(0);
      
      if(numDots == 1)
      {
        ellipse(myX + 25, myY + 25, 10, 10);
        dieSum = dieSum + 1;
      }else if(numDots == 2)
    {
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      dieSum = dieSum + 2;
    }else if(numDots == 3)
    {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      dieSum = dieSum + 3;
    }else if(numDots == 4)
    {
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      dieSum = dieSum + 4;
    }else if(numDots == 5)
    {
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      ellipse(myX + 35, myY + 15, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      dieSum = dieSum + 5;
    }else
    {
      ellipse(myX + 15, myY + 13, 10, 10);
      ellipse(myX + 15, myY + 25, 10, 10);
      ellipse(myX + 15, myY + 37, 10, 10);
      ellipse(myX + 35, myY + 13, 10, 10);
      ellipse(myX + 35, myY + 25, 10, 10);
      ellipse(myX + 35, myY + 37, 10, 10);
      dieSum = dieSum + 6; 
      }
    }
      void show()
      {
       fill(254,254,254);
       rect(myX, myY, 50, 50, 15);
      }
        void sum()
  {
    noStroke();
    fill(134,136,138);
    textSize(50);
    rect(20, 457, 240, 50);
    fill((int)(Math.random()* 254),(int)(Math.random() * 254),(int)(Math.random() * 254));
    text("Sum: " + dieSum,30,500);
  }
}
