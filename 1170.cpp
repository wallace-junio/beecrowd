#include <stdio.h>
 
int main() {
	int entrada=0,i,dias=0;
	float qtdeDia=0,metSuprimento=0;
	
	scanf("%d",&entrada);
	
	for(i=0; i < entrada;i++){
		dias=0;
		scanf("%f",&qtdeDia);
		
		while(qtdeDia > 1){
			dias++;
			metSuprimento = qtdeDia/2;
			qtdeDia=metSuprimento;
		}
		
		printf("%d dias\n",dias,qtdeDia);
	}
    return 0;
}
