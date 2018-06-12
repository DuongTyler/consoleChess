#include <string>
using namespace std;
class piece{
	public:
		//parameter nm MUST be an interger, use KING or QUEEN from enums
		piece(int nm, char piece, bool s, int x = 0, int y = 0)
		{
			pnm = piece;	//sets the character displayed on board
			sd = s;		//side
			tp = nm;	//type of piece
			updatePos(x,y);
		//	ident = &identNum;
		}
		void updatePos(int h = 0, int k = 0)
		{
			pos[0] = h;
			pos[1] = k;
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
	private:
		char pnm;
		int tp;
		bool sd;
		int pos[2] = {};
};



