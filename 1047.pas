Program Pzim ;
var 
horaInicial,minutoInicial,horaFinal :integer;
minutoFinal, tempoInicialMin,tempoFinalMin,duracaoJogo,minutos,horas :integer;

Begin
  readln(horaInicial);
	readln(minutoInicial); 
	
	readln(horaFinal);
	readln(minutoFinal);   
	
	tempoInicialMin := (horaInicial*60) + minutoInicial;
 	tempoFinalMin := (horaFinal*60) + minutoFinal;
 	
 	if tempoInicialMin < tempoFinalMin then
	 begin
	  duracaoJogo := tempoFinalMin - tempoInicialMin;
		horas := duracaoJogo div 60; 
		minutos := duracaoJogo mod 60;
		writeln('O JOGO DUROU ',horas,' HORA(S) E ',minutos,' MINUTO(S)'); 
	 end
	else if tempoInicialMin  = tempoFinalMin then
		begin
			writeln('O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)');
		end;	 
End.
