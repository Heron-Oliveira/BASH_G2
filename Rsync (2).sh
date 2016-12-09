



index() {                    
clear                       
echo "copia arquivos"              
echo "copia pastas"               
echo "exit"                                                                                                     
echo
echo -n "escolha a opcao  "
read opcao          		 
                        		
case $opcao in
1)clear
funcao_1 ;;    		
        		
2)clear
funcao_2 ;;	                 

3)clear
exit ;;
*)              	
clear
echo "Opcao invalida."
read pause
index   	
;;
esac
}

funcao_1() {             					           
clear               					   
echo "[1] Copia de pasta local "             
echo "[2] Copia da pasta com SSH Utilizando o Rsync"              
echo "[3] Copia da arquivo com SSH e Rsync" 
echo "[4] Copia de arquivo local com Rsync"                       
echo "[5] Exit"                                                                     
echo
echo -n "digite a opcao "
read opcao1          		
                        		
                        		
case $opcao1 in
1)clear
funcao_R1 ;;  		
                        		
2)clear
funcao_R2 ;;	
        
3)clear
funcao_R3 ;;	

4)clear
funcao_R4 ;;	
        
5)clear
exit ;;

*)              	 
                        	
clear
echo "Opcao invalida."
read pause
index   	
;;
esac
}
    
funcao_2() {             					
clear                                              
echo "[1] Copia o arquivo do mesmo local "           
echo "[2] Copia o arquivo remoto "            
echo "[3] Copia de pasta local "            
echo "[4] Copia de pasta remota"                                       
echo "[5] Exit"                                                                     
echo
echo -n "Digite a opcao "
read opcao2          		
                        		     		
                        		
case $opcao2 in
1)clear
funcao_S1 ;;    		
                        		
2)clear
funcao_S2 ;;	               
       
3)clear
funcao_S3 ;;    		

                        		
4)clear
funcao_S4 ;;			

       
5)clear
exit ;;

*)              	
                        	
clear
echo "Opcao invalida."
read pause
index   	
;;
esac
}
    
funcao_R1() {             					
clear
echo "insira nome do diretorio " 	 		
read dir_1;				        
echo "insira o caminho de destino"		
read des_1;					
rsync -avr --progress $dir_1 $des_1   	    
read pause
index
}

funcao_R4() {             					 
clear
echo "digite o diretorio quer copiar "  		
read dir_1;				      
echo "insira o destino"	      
read des_1;				       
rsync -av --progress $dir_1 $des_1   	    
read pause
    index
}

funcao_R2() {             					
clear
echo "insira a pasta para copiar com o caminho " 		
read dir_2;				      
echo "insira o caminho de destino"		
read des_2;					
echo "insirao usuário da maquina remoto"   
read mac_1;					
echo "insira o ip da maquina remota "		
read ip_1;					
echo "insira porta ssh"			
read port_1;				
rsync -avr --progress $dir_2 -e "ssh -p$port_1" $mac_1@$ip_1:$des_2    	    
read pause
index
}

funcao_R3() {             					
clear
echo "insira o arquivo e o caminho para copia " 			
read arq_3;				       		
echo "insira o destino"			
read des_3;						
echo "insira o usuário da maquina remoto"		
read mac_3;						 			
read ip_3;						 				
read port_3;					
rsync -av --progress $arq_3 -e "ssh -p$port_3" $mac_3@$ip_3:$des_3    	    
read pause
index
}

funcao_S1() {             					
clear
echo "insira o arquivo quer copiar com o caminho "		
read dir1;				              
echo "insira o  destino"		      
read des1;					      
scp  $dir1 $des1   	    
read pause
index
}

funcao_S2() {             					 
clear
echo "insira o arquivo quer copiar com o caminho " 			
read dir2;				       		
echo "insira o caminho de destino"		        
read des2;						
echo "insira o usuário da maquina remoto"		
read mac3;   					
echo "insira o ip da maquina remota "			
read ip3;						
echo "insira a porta ssh"				
read port3;						
scp  -P$port3  $dir2 $mac3@$ip3:$des2    	    
read pause
index
}

funcao_S3() {             					 
clear
echo "insira o diretorio quer copiar com o caminho" 			
read dir5;				                
echo "insira o caminho de destino"			
read des5;						
scp -r $dir5 $des5   	    
read pause
index
}

funcao_S4() {             					
clear
echo "insira o diretorio quer copiar com o caminho" 			
read dir4;				             	
echo "insira o caminho de destino"			
read des4;						
echo "insira o usuário da maquina remoto"		
read mac4;   					
echo "insira o ip da maquina remota "		
read ip4;					
echo "insira a porta ssh"				
read port4;						
scp -r -P$port4  $dir4 $mac4@$ip4:$des4   
read pause
index
}

opcao_invalida() {     
clear
echo "Opcao invalida."
read pause
index
}

index               

