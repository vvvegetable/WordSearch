#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//LARRY CODE HERE: 




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

//LARRY
void printKey(int numWords, int n, char words[numWords][n+1]){
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
void playGame(int numWords, int n, int wordCoordinates[numWords][3], char words[numWords][n+1]){
	int gameDone = 0; 
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
		} int check = wordCoordinates[wordNum-1][1]; 	//check if the entered X coordinate is correct
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
		} else{
			printf("CORRECT! Now what column do you think the first letter of '%s' appears in: ", words[wordNum-1]);
			result = scanf("%d", &yLoc); 
			if (result != 1){
				printf("Incorrect input, exiting...\n");
				exit(1); 
			} check = wordCoordinates[wordNum-1][0]; 	//check if the entered X coordinate is correct	
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
			} else {
				printf("CORRECT!\n");
				wordCoordinates[wordNum-1][2] = 1;   //word marked as found
			} gameDone = checkFinished(numWords, wordCoordinates); 			//check if all words have been found
		}	
	}
}

void reverseString(int length, char reverse[length])
{
    char temp [length];
    int i;
    for (i = 0; i< length; i++)
        temp [i] = reverse [length - i];
    reverse = temp;
}

void createMatrix (int n, char words[n][n+1], int numWords, int wordCoordinates[numWords][3], char grid[n][n+1]){
	
	int usedRows[n];		//keeps track of the rows occupied by a word 
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
	        reverseString(wordLen, words[i]);
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
		}
		strncpy(&grid[wordY][wordX], words[i], wordLen); //used strncpy to avoid copying '\0' 	
		//record the starting coordinates of the words so the user can play the game:
		
		wordCoordinates[i][0] = wordX+1; 	
		wordCoordinates[i][1] = wordY+1; 						
	}
	for (i=0; i < n*n; i++) {
		if (grid[i/n][i%n] == '0')
			grid[i/n][i%n] = 'a' + rand() % ('z'-'a'); //replaces 0's with random letters a to z
	}	
}


//PAUL/CARTER/ANNIE/OTHER? 
int main(){	 
	
	
	int n = getSize();
	//GET WORDS - outputs 1D/2D array of words: 
	int numWords = 5;
	
	//THIS WILL BE DELETED AFTER LARRY'S FUNCTION IS IN: 
	char words[n][n+1]; //n+1 is to make space for '\0'
	strcpy(words[0], "mahogany");
	strcpy(words[1], "plywood");
	strcpy(words[2], "melanine");
	strcpy(words[3], "oak");
	strcpy(words[4], "birch");
	
	
	int wordCoordinates[numWords][3];   //the coordinates for the start of each word (row,col)
	char finalArray[n][n+1]; 
	createMatrix(n, words, numWords, wordCoordinates, finalArray);
	

	
	
	printGrid(n, finalArray);
	printKey(numWords, n, words);
	playGame(numWords, n, wordCoordinates, words); 
	
	return 0;
}
