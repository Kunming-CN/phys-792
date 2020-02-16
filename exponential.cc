#include<iostream>
#include<TRandom3.h>
#include<TRandom.h>
#include<TH1F.h>
#include<TCanvas.h>
using namespace std;

int main(){

	TH1F histogram("histogram", ";Time-Interval;",50, 0,500);
	TRandom generator(0);
	cout<<generator.Exp(100)<<endl;
	
	for(int i=0; i<1000; i++)
	histogram.Fill(generator.Exp(100));
	
	TCanvas can;
	histogram.Draw();	
	can.Print("Exp.jpg");


	return 0;

}
