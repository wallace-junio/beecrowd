var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

var entrada=0,i,dias=0, qtdeDia=0,metSuprimento=0;
	
	entrada=lines.shift().split(' ');
	
	for(i=0; i < entrada;i++){
		dias=0;
		qtdeDia=lines.shift().split(' ');
		
		while(qtdeDia > 1){
			dias= dias+1;
			metSuprimento = qtdeDia/2;
			qtdeDia=metSuprimento;
		}
		
		console.log(dias+" dias");
	}
