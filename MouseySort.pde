int cheesesticks [] = { 90, 150, 30, 22, 12, 58, 76, 31, 91, 4, 56, 24, 63, 72, 97, 32, 121, 76, 128, 7 }; 
int i = -1;
int j = 0;
 
int min;
 
void setup () {
 
  size (800,800);
 
 
  for (int k=0; k<20; k++)
    println(cheesesticks[k]);
 
}
 
void draw () {
 
 
  background(0,255,255);
 
  // only runs after j reaches 20  
  if ((j == 20) && (i < 19)) {
 
     i++;
     j=i+1;
     min = cheesesticks[i];
  }
 
  // runs as long as j is less than 20
  if (j < 20) {
 
    if (cheesesticks[j] < min){
      min = cheesesticks[j];
      int temp = cheesesticks[i];
      cheesesticks[i] = cheesesticks[j];
      cheesesticks[j] = temp;
    }
    j++;
  }
 
 
  // Draws the state of the cheesesticks  
  fill (0,0,255);
 
  for (int l=0; l<20; l++)
  {
    rect(0, l*20, cheesesticks[l]*5, 10);
  }
 
  println("poop");
 
}
