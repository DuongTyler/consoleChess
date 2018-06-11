#include <iostream>
#include <string>
#include <unistd.h>
#include "piece.h"
using namespace std;
string board [8][8]; //= {{'0','0','0','0','0','0','0','0'},{'0','0','0','0','0','0','0','0'}};

//piece board [8][8] = {{king(1,0,0), queen(2,0,1), bishop(3,0,2)},{}};

enum pieceNames
{
	EMPTY = ' ',
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
			board[o][v] = ' ';
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
	move(KING,E,1,E,1);
	move(QUEEN,D,1,D,1);
	updateBoard();
	sleep(1000);
	move(KING,E,1,E,2);
	move(QUEEN,D,1,D,8);
	updateBoard();
	while (true){
		cout<<"Make a Move\n"<<endl;
		string movTo;
		getline(cin, movTo);
		int xCoord, yCoord, xCoord2, yCoord2;
		switch(movTo[0])
		{
			case 'A':
				xCoord = 1;
				break;
			case 'B':
				xCoord = 2;
				break;
			case 'C':
				xCoord = 3;
				break;
			case 'D':
				xCoord = 4;
				break;
			case 'E':
				xCoord = 5;
				break;
			case 'F':
				xCoord = 6;
				break;
			case 'G':
				xCoord = 7;
				break;
			case 'H':
				xCoord = 8;
				break;
		}

		switch(movTo[1])
		{
			case '1':
				yCoord = 1;
				break;
			case '2':
				yCoord = 2;
				break;
			case '3':
				yCoord = 3;
				break;
			case '4':
				yCoord = 4;
				break;
			case '5':
				yCoord = 5;
				break;
			case '6':
				yCoord = 6;
				break;
			case '7':
				yCoord = 7;
				break;
			case '8':
				yCoord = 8;
				break;
		}
		
		switch(movTo[3])
		{
			case 'A':
				xCoord2 = 1;
				break;
			case 'B':
				xCoord2 = 2;
				break;
			case 'C':
				xCoord2 = 3;
				break;
			case 'D':
				xCoord2 = 4;
				break;
			case 'E':
				xCoord2 = 5;
				break;
			case 'F':
				xCoord2 = 6;
				break;
			case 'G':
				xCoord2 = 7;
				break;
			case 'H':
				xCoord2 = 8;
				break;
		}

		switch(movTo[4])
		{
			case '1':
				yCoord2 = 1;
				break;
			case '2':
				yCoord2 = 2;
				break;
			case '3':
				yCoord2 = 3;
				break;
			case '4':
				yCoord2 = 4;
				break;
			case '5':
				yCoord2 = 5;
				break;
			case '6':
				yCoord2 = 6;
				break;
			case '7':
				yCoord2 = 7;
				break;
			case '8':
				yCoord2 = 8;
				break;
		}
		//cin>>xCoord;
		//cin>>yCoord;
		//cin>>xCoord2;
		//cin>>yCoord2;
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
		char mover;
		if((king.getPos(0) == xCoord)&&(king.getPos(1) == yCoord)){
			mover = KING;
		}
		if((queen.getPos(0) == xCoord)&&(queen.getPos(1) == yCoord)){
			mover = QUEEN;
		}
		move(mover,xCoord,yCoord,xCoord2,yCoord2);
		//{
		cout<<king.getPos(0)<<","<<king.getPos(1)<<endl;
		cout<<board[xCoord2]<<","<<yCoord2<<endl;
		cout<<queen.getPos(0)<<","<<queen.getPos(1)<<endl;
		updateBoard();
	}
	///cout<<king.getId()<<endl;
	return 0;
}

