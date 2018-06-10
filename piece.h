#include <string>
using namespace std;
class piece{
	public:
		//int *ident;
		piece(int nm, bool s, int x = 0, int y = 0)
		{
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
	private:
		int tp;
		bool sd;
		int pos[2] = {};
};



