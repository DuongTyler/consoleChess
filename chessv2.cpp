#include <iostream>
#include <string>
#include <unistd.h>
#include <stdlib.h>
#include "piece.h"
using namespace std;
char board [8][8]; 		//64 space visual representation
piece *positions[8][8];		//64 space pointer array
piece *clearPos[1];		//used to check if a space is clear, since I can't seem to get the damn thing to work right otherwise
enum pieceNames{EMPTY = ' ',KING='K',QUEEN='Q',BISHOP='B',KNIGHT='K',ROOK='R',PAWN='P'};
enum xAlias{A = 0,B = 1,C = 2,D = 3,E = 4,F = 5,G = 6,H = 7};
int redspaces[8][8];
int *redboardmem = &redspaces;
void updateBoard()
{
	cout<<"\033[0;36mSimple Chess\n\033[0;34mBy Tyler D.\n\033[0;37mGame Format: [A-H][1-8] [A-H][1-8]\033[0;37m"<<endl;
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
		board[x2][y2] = positions[x1][y1]->getPiece();	//sets the character on the board
		board[x1][y1] = EMPTY;				//clears old board space (visual board)
		positions[x2][y2] = positions[x1][y1];		//sets new coord from old logical board
		positions[x1][y1]->updatePos(x2,y2);		//updates values inside piece
		positions[x1][y1] = clearPos[0];		//clears the pointer in the original space
}

int main()
{		//(Piece Type, Side Black, init x(default 0), init y(default 0))
	setup();
	cout<<positions[0][0]<<endl;
	//Piece Declaration
		//Delcare Pieces by 
			//piece pieceName(TYPE,Symbol,Side,init xCoord,init yCoord);
			//piece *piecePtr = &pieceName;
			//board[init xCoord][init yCoord] = piecePtr->getPiece();
			//positions[init xCoord][init yCoord] = piecePtr;
	
//WHITE
	//#KING0#
	king wking01(0,D,0);
	piece *wking01Ptr = &wking01;
	board[D][0] = wking01Ptr->getPiece();
	positions[D][0] = wking01Ptr;
	//#QUEEN0#
	queen wqueen01(0,E,0);
	piece *wqueen01Ptr = &wqueen01;
	board[E][0] = wqueen01Ptr->getPiece();
	positions[E][0] = wqueen01Ptr;
//BLACK
	//#KING0#
	king bking01(1,D,7);
	piece *bking01Ptr = &bking01;
	board[D][7] = wking01Ptr->getPiece();
	positions[D][7] = bking01Ptr;
	//#QUEEN0#
	queen bqueen01(1,E,7);
	piece *bqueen01Ptr = &bqueen01;
	board[E][7] = bqueen01Ptr->getPiece();
	positions[E][7] = bqueen01Ptr;
	
	
/*	//#Bishop0-1#
	piece bishop01(BISHOP,'B',0,C,0);
	piece *bishop01Ptr = &bishop01;
	board[C][0] = bishop01Ptr->getPiece();
	positions[C][0] = bishop01Ptr;
	//#Bishop0-2#
	piece bishop02(BISHOP,'B',0,F,0);
	piece *bishop02Ptr = &bishop02;
	board[F][0] = bishop02Ptr->getPiece();
	positions[F][0] = bishop02Ptr;
	//#Knight0-1#
	piece knight01(KNIGHT,'N',0,G,0);
	piece *knight01Ptr = &knight01;
	board[G][0] = knight01Ptr->getPiece();
	positions[G][0] = knight01Ptr;
	//#Knight0-2#
	piece knight02(KNIGHT,'N',0,B,0);
	piece *knight02Ptr = &knight02;
	board[B][0] = knight02Ptr->getPiece();
	positions[B][0] = knight02Ptr;
	//#Rook0-1#
	piece rook01(ROOK,'R',0,A,0);
	piece *rook01Ptr = &rook01;
	board[A][0] = rook01Ptr->getPiece();
	positions[A][0] = rook01Ptr;
	//#Rook0-2#
	piece rook02(ROOK,'R',0,H,0);
	piece *rook02Ptr = &rook02;
	board[H][0] = rook02Ptr->getPiece();
	positions[H][0] = rook02Ptr;
	//#Pawn0-1#
	piece pawn01(PAWN,'P',0,A,1);
	piece *pawn01Ptr = &pawn01;
	board[A][1] = pawn01Ptr->getPiece();
	positions[A][1] = pawn01Ptr;
	//#Pawn0-2#
	piece pawn02(PAWN,'P',0,B,1);
	piece *pawn02Ptr = &pawn02;
	board[B][1] = pawn02Ptr->getPiece();
	positions[B][1] = pawn02Ptr;
	//#Pawn0-3#
	piece pawn03(PAWN,'P',0,C,1);
	piece *pawn03Ptr = &pawn03;
	board[C][1] = pawn03Ptr->getPiece();
	positions[C][1] = pawn03Ptr;
	//#Pawn0-4#
	piece pawn04(PAWN,'P',0,D,1);
	piece *pawn04Ptr = &pawn04;
	board[D][1] = pawn04Ptr->getPiece();
	positions[D][1] = pawn04Ptr;
	//#Pawn0-5#
	piece pawn05(PAWN,'P',0,E,1);
	piece *pawn05Ptr = &pawn05;
	board[E][1] = pawn05Ptr->getPiece();
	positions[E][1] = pawn05Ptr;
	//#Pawn0-6#
	piece pawn06(PAWN,'P',0,F,1);
	piece *pawn06Ptr = &pawn06;
	board[F][1] = pawn06Ptr->getPiece();
	positions[F][1] = pawn06Ptr;
	//#Pawn0-7#
	piece pawn07(PAWN,'P',0,G,1);
	piece *pawn07Ptr = &pawn07;
	board[G][1] = pawn07Ptr->getPiece();
	positions[G][1] = pawn07Ptr;
	//#Pawn0-8#
	piece pawn08(PAWN,'P',0,H,1);
	piece *pawn08Ptr = &pawn08;
	board[H][1] = pawn08Ptr->getPiece();
	positions[H][1] = pawn08Ptr;
*/	//End Pieces
	system("./clearScrn.sh");
	updateBoard();
	bool valid = false;
	bool won = false;
	while (!won){
		cout<<"Move: ";
		string movTo;
		getline(cin, movTo);
		int xCoord, yCoord, xCoord2, yCoord2;
		switch(toupper(movTo[0]))
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
		switch(toupper(movTo[3]))
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
			cout<<"Reached flag 1"<<endl;
			if(
					positions[xCoord][yCoord] == clearPos[0]||	//if no piece here, not valid
					(xCoord==xCoord2&&yCoord==yCoord2)||		//if same coordinate, not valid
					(positions[xCoord2][yCoord2]!=clearPos[0]
					 &&
					 positions[xCoord][yCoord]->getSide()==
					 positions[xCoord2][yCoord2]->getSide())	//if on same side, not valid	positions pointer points to function to return side value
			){
				cout<<"Reached flag 2"<<endl;
				valid = false;
				sleep(500);
			}
		}
		system("./clearScrn.sh");
		if(valid)
		{
			cout<<"Moving"<<endl;
			move(xCoord, yCoord, xCoord2, yCoord2);
			cout<<xCoord<<","<<yCoord<<"-->"<<xCoord2<<","<<yCoord2<<endl;
		}
		updateBoard();

		if(!valid)
		{
			cout<<"\033[0;31mNot a Valid Move.\033[0;37m"<<endl;
		}
		valid = false;
		}
	return 0;
	}
