

#!/bin/bash

echo "Trabalho 2 - Aluno: Gabriel Abbade
[1] Listar conteúdo da pasta atual
[2] Ver conteúdo de um arquivo
[3] Testar se uma maquina ip/nome está no ar
[0] Sair
Escolha uma opção:"
read resposta

while [ $resposta -ne 0 ]
do
	if [ $resposta -eq 1 ]
	then
		echo $(ls)
	elif [ $resposta -eq 2 ]
	then
		echo "Digite o nome do arquivo"
		read arq
		cat $arq
	elif [ $resposta -eq 3 ] 
	then 
		echo "Entre com o ip: "
		read numIP

		#testa variavel vazia

		if [ ! -z $numIP ]
		then
			ping -c 1 $numIP

			if [ $? -eq 0 ] 
			then
				echo " Maquina esta retornando o IP "
			else 
				echo " maquina nao esta pingando"
			fi
		else 
			echo " IP VAZIO "
		fi
	fi
	echo " Trabalho 2 - Aluno: Gabriel Abbade
	[1] Listar conteúdo da pasta atual
	[2] Ver conteúdo de um arquivo
	[3] Testar se uma maquina ip/nome está no ar
	[0] Sair
	Escolha uma opção:"
	read resposta
done

	

	


