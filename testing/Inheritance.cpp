#include <iostream>
using namespace std;

class parent{
	public:
		parent()
		{
		}
		void speak()
		{
			cout<<"Hello World"<<endl;
		}
		int pvt;
};

class child : public parent
{
	public:
		child(int a, int b)
		{
			pvt = a;
			bravo = b;
		}
		int getB()
		{
			return bravo;
		}
	private:
		int bravo;
//		int childint = 1;
};

int main()
{
	child C(3,4);
	cout<<"Speak Function Inherited: ";
	 C.speak();
	 cout<<C.pvt<<"\n"<<C.getB()<<endl;
	return 0;
}
