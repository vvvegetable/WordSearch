#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int playAgain(){
  char input;
  printf("Would you like to play again?(y/n) ");
  int result = scanf("%c\n", &input);
  if (result != 1) {
    printf("Incorrect input, exiting.\n");
    exit(1);
  }
  if (input == 'y')
    return 1;
  else if (input == 'n')
    return 0;
  else {
    printf("Incorrect input. \n");
    return playAgain();
    }
}

void displayInfo(int score, int numWords){
  printf("Enter your name: ");
  char *name;
  int result = scanf("%s\n", name);
  if (result != 1) {
    printf("Incorrect input, exiting. \n");
    exit(1);
  }
  int maxScore = numWords * 5;
  int numMistakes = (maxScore - score)/3;
  printf("Hello %s, your final score was %d out of a possible %d. You made %d mistakes.\n", name, score, maxScore, numMistakes);
}
//LARRY: 
void getWords(int size,int numWords,char *words[numWords]) {
  int usedWords[numWords]; //so we don't get repeats when selecting random words
  memset (usedWords, -1, sizeof(usedWords));   //set array to -1s
  const char *w[100]; //I can't think of an easier way to store a list of 100 words
  w[0]="cub";w[1]="one";w[2]="fog";w[3]="act";w[4]="try";
  w[5]="ban";w[6]="real";w[7]="join";w[8]="town";w[9]="peck";
  w[10]="wish";w[11]="hate";w[12]="kind";w[13]="rate";w[14]="mint";
  w[15]="turn";w[16]="rose";w[17]="roll";w[18]="head";w[19]="bite";
  w[20]="angry";w[21]="found";w[22]="crash";w[23]="sable";w[24]="smile";
  w[25]="reign";w[26]="blade";w[27]="goofy";w[28]="plain";w[29]="rings";
  w[30]="house";w[31]="pause";w[32]="level";w[33]="large";w[34]="rigid";
  w[35]="earth";w[36]="trust";w[37]="itchy";w[38]="brass";w[39]="curvy";
  w[40]="heady";w[41]="witty";w[42]="drain";w[43]="nippy";w[44]="ducks";
  w[45]="spell";w[46]="class";w[47]="obtain";w[48]="plucky";w[49]="craven";
  w[50]="double";w[51]="sponge";w[52]="grubby";w[53]="tested";w[54]="search";
  w[55]="absent";w[56]="friend";w[57]="amount";w[58]="famous";w[59]="sordid";
  w[60]="chilly";w[61]="belief";w[62]="shrill";w[63]="settle";w[64]="weather";
  w[65]="stomach";w[66]="violent";w[67]="contain";w[68]="morning";w[69]="married";
  w[70]="popcorn";w[71]="ancient";w[72]="undress";w[73]="lacking";w[74]="thirsty";
  w[75]="limping";w[76]="connect";w[77]="unkempt";w[78]="precede";w[79]="whisper";
  w[80]="careless";w[81]="vengeful";w[82]="umbrella";w[83]="position";w[84]="multiply";
  w[85]="cheerful";w[86]="heavenly";w[87]="gruesome";w[88]="religion";w[89]="quixotic";
  w[90]="alcoholic";w[91]="grandiose";w[92]="beautiful";w[93]="thinkable";w[94]="miniature";
  w[95]="vivacious";w[96]="voracious";w[97]="connection";w[98]="comfortable";w[99]="advertisement";
  int lengthIndex = 99;
  while (strlen(w[lengthIndex]) > size)
    lengthIndex--; //find all words that fit inside the grid
  int i;
  for (i=0; i < numWords; i++) {
    int indexOK; //a boolean used to check if randIndex any indexes in usedWords
    do {
      indexOK = 1; //word is OK by default
      int randIndex = rand() % lengthIndex; //grab a random word
      int j;
      for (j=0; j < numWords; j++) {
	if (randIndex == usedWords[j]) //check if index matches any previous ones
	  indexOK = 0; //if so, set indexOK to false
      }
      strcpy(words[i], w[randIndex]); //copy the rand string into words
      usedWords[i] = randIndex; //save this index
    } while (!indexOK);
  }
}

//ANNIE
int getSize(){
  int size = 0; 
  printf("Enter a matrix size between 10-20: ");
  int result = scanf("%d", &size);
  if (result != 1){
    printf("Incorrect input, exiting...\n");
    exit(1); 
  }
  while (size < 10 || size > 20 ) {

    printf("Input error, please try again: ");
    result = scanf("%d\n", &size);
  }
  return size; 
}

int getNumWords(int min, int max){
  int size = 0;
  printf("Enter the number of words you wish to search for between %d and %d: ", min, max);
  int result = scanf("%d", &size);
  if (result != 1){
    printf("Incorrect input, exiting…\n");
    exit(1);
  }
  while (size < min || size > max) {
    printf("Input error (number not in range), please try again: ");
    result = scanf("%d", &size);
  }
  return size;
}

//MARK
void printGrid(int size, char grid[size][size+1]) {
  int i;
  int j; 
  printf("\n   "); 
  for (i = 0; i< size; i++){
    printf("%2d  ", i+1);
  }
  printf("\n");
  for (i=0; i < size; i++){
    printf("%2d| ",i+1);
    for (j=0; j<size; j++){
      printf("%c   ", grid[i][j]);
    }
    printf("\n");
  }
}

//ANNIE
void printKey(int numWords, int n, char *words[numWords]){
  int i;
  printf("\nWORD KEY:\n");
  for (i=0; i< numWords-1; i++){
    printf("%d) %s, ",i+1,words[i]);
  }
  printf("%d) %s\n\n",i+1,words[numWords-1]);
}

//NEW FUNCTION FOR SOMEONE
int checkWordsRemain(int numWords, int wordCoordinates[numWords][3]){
  int wordNum = 0; 
  printf("Please enter the word number you want to check (0 to exit): "); 
  int result = scanf("%d", &wordNum); 
  if (wordNum == 0){
    exit(0); 
  }
  if (result != 1){
    printf("Incorrect input, exiting...\n");
    exit(1); 
  }
  int check = wordCoordinates[wordNum-1][2];    // check if the word has already been found
  while (check == 1){
    printf("You have already found that word, please try again: ");
    result = scanf("%d", &wordNum); 
    check = wordCoordinates[wordNum-1][2]; 
    if (result != 1){
      printf("Incorrect input, exiting...\n");
      exit(1); 
    }
  }
  return wordNum;
}

//NEW FUNCTION FOR SOMEONE
int checkFinished(int numWords, int wordCoordinates[numWords][3]){
  int gameDone = 1; 
  int i; 
  for (i = 0; i < numWords; i++){
    if (wordCoordinates[i][2] == 0){
      gameDone = 0;   //set gameDone to 0 and continue loop if 0 is found
    }
  }
  if (gameDone == 1)
    printf("YOU WON! Thanks for playing!\n");
  return gameDone; 
}

//DAN
int playGame(int numWords, int n, int wordCoordinates[numWords][3], char *words[numWords]){
  int gameDone = 0; 
  int score = 0;
  while (gameDone == 0){
    int wordNum = 0; 
    int xLoc = 0; 
    int yLoc = 0; 
    wordNum = checkWordsRemain(numWords, wordCoordinates);
    printf("What row do you think '%s' appears in: ", words[wordNum-1]);
    int result = scanf("%d", &xLoc); 
    if (result != 1){
      printf("Incorrect input, exiting...\n");
      exit(1); 
    } int check = wordCoordinates[wordNum-1][1]; //check if the entered X coordinate is correct
    while (xLoc < 1 || xLoc > n){
      printf("The number you have entered is out of bounds, please enter a number between 1 and %d: ", n);
      result = scanf("%d", &xLoc); 
      if (result != 1){
	printf("Incorrect input, exiting...\n");
	exit(1); 
      }
    }
    if (check != xLoc){
      printf("Sorry that wasn't correct\n");
      score = score - 3;
    } else{
      printf("CORRECT! Now what column do you think the first letter of '%s' appears in: ", words[wordNum-1]);
      result = scanf("%d", &yLoc); 
      if (result != 1){
	printf("Incorrect input, exiting...\n");
	exit(1); 
      } check = wordCoordinates[wordNum-1][0]; //check if the entered X coordinate is correct
      while (yLoc < 1 || yLoc > n){
	printf("The number you have entered is out of bounds, please enter a number between 1 and %d: ", n);
	result = scanf("%d", &yLoc); 
	if (result != 1){
	  printf("Incorrect input, exiting...\n");
	  exit(1); 
	}
      }
      if (check != yLoc){
	printf("Sorry that wasn't correct\n");
	score = score - 3;
      } else {
	printf("CORRECT!\n");
	wordCoordinates[wordNum-1][2] = 1;   //word marked as found
	score = score + 5;
      } gameDone = checkFinished(numWords, wordCoordinates); 
      printf("Your current score is %d\n", score);
      //check if all words have been found
    }
  }
  return score;
}

//CODE FOR SOMEONE: 
char* reverseString(int length, char reverse[length])
{
  char temp[length];
  int i;
  for (i = 0; i < length; i++)
    temp[i] = '\0';
   for (i = 0; i < length - 1; i++)
    temp[i] = reverse[length - i - 2];
  reverse = temp;
  return reverse;
}

//CARTER AND PAUL
void createMatrix (int n, int numWords, char *words[numWords], int wordCoordinates[numWords][3], char grid[n][n+1]){

  int usedRows[n];//keeps track of the rows occupied by a word 
  memset (usedRows, 0, sizeof(usedRows));   //set array to zeros
  //char grid[n][n+1];      //the word search grid
  int i;
  int j; 

  //FILL WITH ZEROS
  for (i=0; i < n*n; i++)
    grid[i/n][i%n] = '0'; //fill grid with '0's
  for (i=0; i<numWords; i++)
    for (j=0; j<3; j++)
      wordCoordinates[i][j] = 0;   //initialize to 0's
  for (i=0; i < n; i++)
    grid[i][n] = '\0'; //add null chars to end for printing

  //RANDOMIZATION (X,Y) and WORD ENTRY
  for (i=0; i < numWords; i++) {
    int wordLen = strlen(words[i]);
    int reverse = rand() % 2;
    if (reverse == 1)
      strncpy(words[i], reverseString(wordLen + 1, words[i]), wordLen);
    int wordX = rand() % (n-wordLen); //X position of word
    int wordY = rand() % n;     //Y position of word
    // determine if a particular row is occupied (new words placed in unoccupied rows only):
    if (usedRows[wordY] == 0){
      strncpy(&grid[wordY][wordX], words[i], wordLen); //used strncpy to avoid copying '\0'
      usedRows[wordY] = 1; 
    }
    else{
      while (usedRows[wordY] == 1){
	wordY = rand() % n; 
      }
      usedRows[wordY] = 1;
    }
    strncpy(&grid[wordY][wordX], words[i], wordLen); //used strncpy to avoid copying '\0' 
    //record the starting coordinates of the words so the user can play the game:
    if (reverse == 1)
      strncpy(words[i], reverseString(wordLen + 1, words[i]), wordLen);
    wordCoordinates[i][0] = wordX+1; 
    wordCoordinates[i][1] = wordY+1; 
  }
  for (i=0; i < n*n; i++) {
    if (grid[i/n][i%n] == '0')
      grid[i/n][i%n] = 'a' + rand() % ('z'-'a'); //replaces 0's with random letters a to z
  }
}

//CODE FOR SOMEONE  
int main(){
  int replay = 1;
  while (replay == 1) {
    int n = getSize();
    int numWords = getNumWords(n/2, n);
    srand(time(NULL));
    char *words[numWords]; //declared this way because space must be malloced, otherwise it gets overwritten
    int i;
    for (i=0; i < n; i++)
      words[i] = malloc((n+1) * sizeof(char)); //n+1 is to make space for '\0'
    getWords(n, numWords, words); //copies random words size <= n from a list of 100
    int wordCoordinates[numWords][3]; //the coordinates for the start of each word (row,col)
    char finalArray[n][n+1]; //the wordsearch itself
    createMatrix(n, numWords, words, wordCoordinates, finalArray);
    printGrid(n, finalArray);
    printKey(numWords, n, words);
    int score = playGame(numWords, n, wordCoordinates, words); 
    displayInfo(score, numWords);
    replay = playAgain();
  }
  return 0;
}
