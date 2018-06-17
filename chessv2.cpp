#include <iostream>
#include <string>
#include <unistd.h>
#include "piece.h"
using namespace std;
char board [8][8]; 		//64 space visual representation
piece *positions[8][8];	
piece *clearPos[1];
enum pieceNames{EMPTY = ' ',KING='K',QUEEN='Q',BISHOP='B',KNIGHT='K',ROOK='R',PAWN='P'};
enum xAlias{A = 0,B = 1,C = 2,D = 3,E = 4,F = 5,G = 6,H = 7};

void updateBoard()
{
	cout<<endl;
	int vert = 8;//numbering for the y coordinates on the board
	for (int ypos = 7; ypos > -1; ypos--)			//row loop
	{
		cout<<"		";
		for (int xpos = 0; xpos < 8; xpos++)		//collumn loop
		{
			if(((ypos%2)+xpos)%2 == 0){	cout<<"\033[0;37m";	}
			else{				cout<<"\033[7m";	}
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
}


void move(int x1, int y1, int x2, int y2)
{
//	board[x1][y1] = board[x2][y2];
//	if((x2>=0&&x2<=7)&&(y2>=0&&(y2<=7))&&(positions[x1][y1]!=0 || positions[x1][y1]!= NULL))
//	{
//		cout<<"was vailid input"<<endl;
//		cout<<positions[x1][y1]<<endl;
		board[x2][y2] = positions[x1][y1]->getPiece();	//sets the character on the board
		board[x1][y1] = EMPTY;				//clears old board space (visual board)
		positions[x2][y2] = positions[x1][y1];		//sets new coord from old logical board
		positions[x1][y1]->updatePos(x2,y2);		//updates values inside piece
		positions[x1][y1] = clearPos[0];		//clears the pointer in the original space
//		cout<<positions[x1][y1]<<endl;
//	}
}

int main()
{		//(Piece Type, Side Black, init x(default 0), init y(default 0))
	setup();
	cout<<positions[0][0]<<endl;
	//Piece Declaration
	//#KING#
	piece king(KING,'K',0,D,0);
	piece *kingPtr = &king;
	board[D][0] = kingPtr->getPiece();
	positions[D][0] = kingPtr;
	//#QUEEN#
	piece queen(QUEEN,'Q',0,E,0);
	piece *queenPtr = &queen;
	board[E][0] = queenPtr->getPiece();
	positions[E][0] = queenPtr;

	//End Pieces
/*	cout<<"kingPtr->getPiece() "<<kingPtr->getPiece()<<endl;
	board[0][0] = kingPtr->getPiece();
	positions[0][0] = kingPtr;
	cout<<positions[0][0]->getPos(0)<<positions[0][0]->getPos(1)<<endl;
	positions[0][0]->updatePos(1,1);
	cout<<positions[0][0]->getPos(0)<<positions[0][0]->getPos(1)<<endl;
*/	updateBoard();
	bool valid = false;
	cout<<"Valid? : "<<valid<<endl;
	while (1){
		cout<<"Move: ";
		string movTo;
//		while(!valid)
//		{
		getline(cin, movTo);
//		}
		int xCoord, yCoord, xCoord2, yCoord2;
//		try{
		switch(movTo[0])
		{
			case 'A':	valid = true; xCoord = A;		break;
			case 'B':	valid = true; xCoord = B;		break;
			case 'C':	valid = true; xCoord = C;		break;
			case 'D':	valid = true; xCoord = D;		break;
			case 'E':	valid = true; xCoord = E;		break;
			case 'F':	valid = true; xCoord = F;		break;
			case 'G':	valid = true; xCoord = G;		break;
			case 'H':	valid = true; xCoord = H;		break;
			default:	valid = false;				break;
		}
if(valid){
		switch(movTo[1])
		{
			case '1':	valid = true; yCoord = 0;		break;
			case '2':	valid = true; yCoord = 1;		break;
			case '3':	valid = true; yCoord = 2;		break;
			case '4':	valid = true; yCoord = 3;		break;
			case '5':	valid = true; yCoord = 4;		break;
			case '6':	valid = true; yCoord = 5;		break;
			case '7':	valid = true; yCoord = 6;		break;
			case '8':	valid = true; yCoord = 7;		break;
			default:	valid = false;				break;
		}
}if(valid){	
		switch(movTo[3])
		{
			case 'A':	valid = true; xCoord2 = A;		break;
			case 'B':	valid = true; xCoord2 = B;		break;
			case 'C':	valid = true; xCoord2 = C;		break;
			case 'D':	valid = true; xCoord2 = D;		break;
			case 'E':	valid = true; xCoord2 = E;		break;
			case 'F':	valid = true; xCoord2 = F;		break;
			case 'G':	valid = true; xCoord2 = G;		break;
			case 'H':	valid = true; xCoord2 = H;		break;
			default:	valid = false;				break;
		}
}if(valid){
		switch(movTo[4])
		{
			case '1':	valid = true; yCoord2 = 0;		break;
			case '2':	valid = true; yCoord2 = 1;		break;
			case '3':	valid = true; yCoord2 = 2;		break;
			case '4':	valid = true; yCoord2 = 3;		break;
			case '5':	valid = true; yCoord2 = 4;		break;
			case '6':	valid = true; yCoord2 = 5;		break;
			case '7':	valid = true; yCoord2 = 6;		break;
			case '8':	valid = true; yCoord2 = 7;		break;
			default:	valid = false;				break;
		}
}
		if(valid)
		{
			if(positions[xCoord][yCoord] == clearPos[0]||(xCoord==xCoord2&&yCoord==yCoord2))
			{
				valid = false;
			}
		}
//		}
//		catch(int err)
//		{
//			cout<<err<<endl;
//		}
//		cout<<xCoord<<","<<yCoord<<"-->"<<xCoord2<<","<<yCoord2<<endl;
		cout<<"Valid? : "<<valid<<endl;
		if(valid){
			move(xCoord, yCoord, xCoord2, yCoord2);
//			updateBoard();
			sleep(500);
			cout<<xCoord<<","<<yCoord<<"-->"<<xCoord2<<","<<yCoord2<<endl;
		}else{
			cout<<"NOT A VALID MOVE"<<endl;
		}
	updateBoard();
	valid = false;
	}
	return 0;
}

