#include <string>
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
		void setPiece(char piece)
		{
			pnm = piece;
		}
		char getPiece()
		{
			return pnm;
		}
		int pos[2] = {};
		bool sd;
		char pnm;
		char tp;
};

class king : public piece 
{
	public:
		king(char nm, char piece, bool s, int x = 0, int y = 0)
		{
			pnm = piece;	//sets the character displayed on board
			sd = s;		//side
			tp = nm;	//type of piece
			updatePos(x,y);
		//	ident = &identNum;
		}
};

