#include <iostream>
#include <string>
#include <unistd.h>
#include <stdlib.h>
#include "piece.h"
#include "board.h"

char board [8][8]; 		//64 space visual representation

void printBoard()
{
	
	int vert = 8;						//numbering for the y coordinates on the board
	for (int ypos = 7; ypos > -1; ypos--)			//row loop
	{
		std::cout<<"		";
		for (int xpos = 0; xpos < 8; xpos++)		//collumn loop
		{
			if(((ypos%2)+xpos)%2 == 0){	std::cout<<"\033[0;37m";	}	//color black
			else{				std::cout<<"\033[7m";	}	//color white
			std::cout<<board[xpos][ypos]<</*"\033[0m "*/" ";
		}
		std::cout<<"\033[0m "<<vert<<std::endl;
		vert--;
	}
	std::cout<<"		\033[0mA B C D E F G H "<<std::endl;
}



void sleep(int ms)
{
	usleep(ms*1000);
}

void setup()
{
	for(int v = 0; v < 8; v++)
	{
		for(int o = 0; o < 8; o++)
		{
			board[o][v] = ' ';
		}
	}
}


void move(int x1, int y1, int x2, int y2)
{
}
int main()
{		
	setup();
	system("clear");
	printBoard();
	return 0;
}
