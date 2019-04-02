
class Board
{

	public:
		Board()
		{
			
		}

		Piece getPiece(int x, int y)
		{
			return board[x][y];
		}
		
		void setPiece(int x, int y, Piece p)
		{
			board[x][y] = p;
		}

	private:
/*		
		Piece board[8][8] = {
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
			{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' }
		};
*/
		Piece board[8][8];
};

