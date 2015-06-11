#include <stdio.h>	
#define feet 0.083	
#define yard 0.027	
//Trabajo junto a Ciro Gelvez

int main (){

  double inches,yards,feets;// declaracion de variales a usar

	printf("Distance to convert in INCHES: \n");

	scanf("%lf", &inches);		
	feets=feet*inches;
	yards=yard*inches;//aca se realiza la conversion
	
	printf("%.2lf inches --->  %.2lf feet and %.2lf yards\n",inches,feets,yards);
	
	return 0;
}
