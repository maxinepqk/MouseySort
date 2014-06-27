int[] cheesesticks = { 90, 150, 30, 22, 12, 58, 76, 31, 91, 4, 56, 24, 63, 72, 97, 32, 121, 76, 128, 7 };

//for (int i=0; i<20;i++){
//for (int j=0; j<20; j++){
//int [ ] array = new int [20];
//int size = 20;
//}
//}

//void draw(){
  
//}

int i,j;
int iMin;
int n = 20;


for (j = 0; j < n-1; j++) {    
    iMin = j;   

    for ( i = j+1; i < n; i++) {
        if (cheesesticks[i] < cheesesticks[iMin]) { 
         iMin = i;
        }

    }

   int temp = cheesesticks[j];
   cheesesticks[j] = cheesesticks[iMin];
   cheesesticks[iMin] = temp;

   System.out.print(cheesesticks[j]+ " ");
   for(int m = 0; m < cheesesticks[j]; m++){
   System.out.print("*");
   }
   System.out.println("");
      

}


