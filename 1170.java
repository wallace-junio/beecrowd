import java.io.IOException;
import java.util.Scanner;   
/**
 * IMPORTANT: 
 *      O nome da classe deve ser "Main" para que a sua solução execute
 *      Class name must be "Main" for your solution to execute
 *      El nombre de la clase debe ser "Main" para que su solución ejecutar
 */
public class Main {
 
    public static void main(String[] args) throws IOException {
 
	int entrada=0,i,dias=0;
	float qtdeDia=0,metSuprimento=0;
	
	Scanner sc = new Scanner(System.in);
    entrada = sc.nextInt(); 
	
	
	for(i=0; i < entrada;i++){
		dias=0;
		qtdeDia =  sc.nextFloat(); 
		
		while(qtdeDia > 1){
			dias++;
			metSuprimento = qtdeDia/2;
			qtdeDia=metSuprimento;
		}
		
	System.out.println(dias +" dias");
 
    }
 
}
}
