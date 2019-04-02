#include <string>
#include <unistd.h>

class Piece
{
	
	public:
		Piece(int tp, int x = 0, int y = 0)
		{
			type = tp;
			switch (tp)
			{
				case 0:		visual = 'K';	break;
				case 1:		visual = 'Q';	break;
				case 2:		visual = 'B';	break;
				case 3:		visual = 'N';	break;
				case 4:		visual = 'R';	break;
				default:	visual = 'P';	break;
			}
		}
		
		int [] getCoords()
		{
			return {x,y};
		}
		
		char printPiece()
		{
			return visual;
		}

		int getType()
		{
			return type;
		}

	private:
		int 	type;
		char 	visual;
		int 	x;
		int 	y;
};
