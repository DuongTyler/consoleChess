#include <iostream>
#include <string>
using namespace std;

int main()
{
	string test = "Hello world";
	cout<<test[0]<<endl;
	getline(cin, test);
	cout<<test[0]<<endl;
	switch(test[0])
	{
		case 'H':
			cout<<"You typed H as first Char"<<endl;
			break;
	}
	return 0;
}
