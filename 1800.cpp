#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

 int verifica02Dias(int valor,int Qtde, int vet[]){
 	int x=0;
	//verifica se foi visitado nos ultimos 02 dias
	for (x=0;x < Qtde;x++) {
		if(vet[x] == valor ){
		    
   	   	   return 1;
	    }	
	}
	return 0;
 }
 
int verificaultimaSemana(int valor, int Qtde, int vet[]) {
	int y;
	//verifica se foi visitado na ultima semana
	for (y=0;y < Qtde-1;y++) {
		if(vet[y] == valor){
			
		  return 1;
	    }	   	 
	}
	return 0;
} 

int main(){	
	int verificaDia=0, verificaSemana=0,escritorio=0,i=0,QtdeUltSemana=0,QtdeUltDoisDias=0;
	
	do{
	scanf("%d",&QtdeUltSemana);
	scanf("%d",&QtdeUltDoisDias);
	}while(QtdeUltDoisDias <= 1 || QtdeUltDoisDias >= QtdeUltSemana
	   	   || QtdeUltSemana <= 1 || QtdeUltSemana >= 100);
	
	//Guarda escritorios ultimos dois dias
	int vetEscrDoisDias[QtdeUltDoisDias];
	for (i=0;i < QtdeUltDoisDias;i++) {
		do{
		   scanf("%d",&vetEscrDoisDias[i]);	
		}while(vetEscrDoisDias[i] < 1 || vetEscrDoisDias[i] >= 1000); 
	}
	
	int vetEscrUltSemana[QtdeUltSemana];
	//Informa escritorios visitados ultimas duas semanas
	for (i=0;i < QtdeUltSemana;i++) {	
		do{
		 scanf("%d",&escritorio);	
		}while(escritorio < 1 || escritorio >= 1000);
		vetEscrUltSemana[i] = escritorio; 
		
		verificaDia=verifica02Dias(escritorio, QtdeUltDoisDias , vetEscrDoisDias);
		verificaSemana = verificaultimaSemana(escritorio, i ,vetEscrUltSemana);	
	
		if(verificaDia == 1 || verificaSemana == 1){
			printf("0\n");   
				
		}else{
			printf("1\n");   	
		}				
	}

	return 0;
}
