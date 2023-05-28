#include <iostream>
#include<bits/stdc++.h>
#include <conio.h>
 
using namespace std;
 
int main() {
	
	int horaInicial=0,minutoInicial=0,horaFinal=0;
	int minutoFinal=0, tempoInicialMin=0,tempoFinalMin=0,duracaoJogo=0,minutos=0,horas=0;
	
 	 scanf("%d %d %d %d", &horaInicial, &minutoInicial, &horaFinal, &minutoFinal);
 	
 	tempoInicialMin = (horaInicial*60) + minutoInicial;
 	tempoFinalMin = (horaFinal*60) + minutoFinal;
 	
 	if(tempoInicialMin < tempoFinalMin){
		duracaoJogo = tempoFinalMin - tempoInicialMin;
		horas = duracaoJogo/60; 
		minutos = duracaoJogo % 60;
		cout << "O JOGO DUROU "<< horas <<" HORA(S) E "<< minutos <<" MINUTO(S)"<<endl;			 
	}else if (tempoInicialMin  == tempoFinalMin){
		cout << "O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)"<<endl;
	}
 	
    return 0;
}
