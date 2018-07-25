#include <string>
#include <unistd.h>
using namespace std;
class piece{
	public:
		//parameter nm MUST be an interger, use KING or QUEEN from enums
		piece()
		{
		}
		int updatePos(int h = 0, int k = 0)
		{
			
			if(abs(pos[0]-h) != 1&& abs(pos[1]-k) != 1)
			{
				pos[0] = h;
				pos[1] = k;
				return 0;
			}else{
				return -1;
			}
		}
		int getPos(int p)
		{
			return pos[p];
		}
		char getType()
		{
			return tp;
		}
		bool getSide()
		{
			return sd;
		}
/*		void setPiece(char piece)
		{
			pnm = piece;
		}
*/		char getPiece()
		{
			return pnm;
		}
		int pos[2];
		bool sd;
		char pnm;
		char tp;
};

class king : public piece 
{
	public:
		king(bool s, int x = 0, int y = 0)
		{
			pnm = tp = 'K';	//sets the character displayed on board and type
			sd = s;		//side
			updatePos(x,y);
		//	ident = &identNum;
		}
//	int getPossibleMove()
//	{
//		return temp;
//	}
};
class queen : public piece 
{
	public:
		queen(bool s, int x = 0, int y = 0)
		{
			pnm = tp = 'Q';	//sets the character displayed on board and type
			sd = s;		//side
			updatePos(x,y);
		//	ident = &identNum;
		}
		void mov
		(
		int x1,		//used to check first x position to get rid of the old spaces
		int y1, 	
		int x2, 	//sets new spaces to red
		int y2,
		int board
		)
		{
			
		}
};

