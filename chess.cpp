#include <iostream>
#include <string>
#include <unistd.h>
//#include <time.h>
#include "piece.h"
using namespace std;
string board [8][8]; //= {{'0','0','0','0','0','0','0','0'},{'0','0','0','0','0','0','0','0'}};

//piece board [8][8] = {{king(1,0,0), queen(2,0,1), bishop(3,0,2)},{}};

enum pieceNames
{
	EMPTY = '0',
	KING='K',
	QUEEN='Q',
	BISHOP='B',
	KNIGHT='K',
	ROOK='R',
	PAWN='P'
};
enum xAlias
{
	A = 1,
	B = 2,
	C = 3,
	D = 4,
	E = 5,
	F = 6,
	G = 7
};


piece king(KING,0,5,0);
piece queen(QUEEN,0,4,0);
/*struct pieces
{
	char 
}*/
//piece pieces[][2] = {{},{}};


void move(char/*or use int*/ pc, /*int index,*/ int x1, int y1, int x2, int y2)
{
	switch(pc)
	{
		case KING:

			board[x1-1][y1-1] = EMPTY;	//removes last position
			king.updatePos(x2-1,y2-1);	//updates position on pieces local pos
			board[x2-1][y2-1] = KING;	//updates new position on board
			break;
		case QUEEN:
			board[x1-1][y1-1] = EMPTY;
			queen.updatePos(x2-1,y2-1);
			board[x2-1][y2-1] = QUEEN;
			break;
	}
}

void updateBoard()
{
	cout<<"\n\033[1;37mChess v1.1 by Tyler Duong\033[0m\n\n"<<"Character Codes:\n\033[0;32m1-King\n2-Queen\n3-Bishop\n4-Knight\n5-Rook\n6-Pawn\n\033[0m"<<endl;
	int vert = 8;
	bool offset = 0;
	bool bw = 0;
	for (int ypos = 7; ypos > -1; ypos--)			//row loop
	{

		cout<<"		";
		if (offset==0)
		{
			bw = 1;
			offset = 1;
		}
		else
		{
			bw = 0;
			offset = 0;
		}
		for (int xpos = 0; xpos < 8; xpos++)		//collumn loop
		{
			if(bw == 0)
			{
				cout<<"\033[0;37m";
				bw = 1;
			}
			else
			{
				cout<<"\033[7m";
				bw = 0;
			}
			cout<<board[xpos][ypos]<</*"\033[0m "*/" ";
		}
		cout<<"\033[0m "<<vert<<endl;
		vert--;
	}
	cout<<"		\033[0mA B C D E F G H "<<endl;
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
			board[o][v] = '0';
		}
	}
	//    OOS
	//piece king(KING,0,5,0);
	//piece queen(QUEEN,0,4,0);
	//end OOS
	
}


int main()
{

	setup();
	//updateBoard();

	//Test Pieces
	/*
	piece king('K',0,0,0);
	piece queen('Q',1,1,2);
	cout<<king.getType()<<"\n"<<queen.getPos(0)<<"\n"<<king.getSide()<<endl;
	*/
	//piece king(1,0,0,1,1);
	move(KING,E,1,E,1);
	move(QUEEN,D,1,D,1);
	updateBoard();
	sleep(1000);
	move(KING,E,1,E,2);
	move(QUEEN,D,1,D,8);
	updateBoard();
	cout<<"Make a Move\n"<<endl;
	int xCoord, yCoord, xCoord2, yCoord2;
	cin>>xCoord;
	cin>>yCoord;
	cin>>xCoord2;
	cin>>yCoord2;
	//while()
	//{
	//	string mov;
	//	getline(cin, mov);
	//	char xCoord = mov[0];
	//	if(xCoord == 'E')
	//	{
	//		xCoord = 5;
	//	}
	//	int yCoord = int(mov[1]);
	move(KING,xCoord,yCoord,xCoord2, yCoord2);
	//{
	updateBoard();

	///cout<<king.getId()<<endl;
	return 0;
}

