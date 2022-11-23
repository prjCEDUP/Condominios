programa
{
	
	funcao inicio()
	{
		cadeia nomes[99999]
		inteiro opcao = 0
		cadeia CPF[999999]
		inteiro quantidadeCadastrada = 0
		cadeia datadenascimento[99999]
		inteiro codigo[9999]

		enquanto (opcao != 5) {
			escreva("\n---------------------- CEDUP Timbó 2022 ----------------------")
			escreva("\n---------------- Cadastro de CONDOMINIONS --------------------\n")
			escreva("\n 1 - Cadastrar condôminos")
			escreva("\n 2 - Listar condôminos")
			escreva("\n 3 - Buscar um condômino por código")
			escreva("\n 4 - Buscar um condômino por nome \n")
			escreva("\n 5 - SAIR \n")
			escreva("\n---------------------\n")
			escreva("\n Digite uma opção: ")
			leia(opcao)

				para(inteiro i=0; i<=0; i++)

					se (opcao == 1){
				
						escreva("\n Digite o nome do condômino " + quantidadeCadastrada +": ")
						leia(nomes[quantidadeCadastrada])
						escreva("\n Digite o CPF: ")
						leia(CPF[i])
						escreva("\n Digite a data de nascimento: ")
						leia(datadenascimento[i])
				
						quantidadeCadastrada++
				}
		
			para(inteiro i=0; i<quantidadeCadastrada; i++)
			
						se (opcao==2){
							
							escreva(i+" - "+nomes[i] + "\n")
					}

			para(inteiro i=0; i<=0; i++)


					se(opcao ==3){
						
						escreva("\n" + "Digite o código do Condômino: ")
						leia(codigo[i])
						escreva("\n" + "NOME: " + nomes[quantidadeCadastrada])
						escreva("\n" + "CPF: " + CPF[quantidadeCadastrada])
						escreva("\n"+ "DATA DE NASCIMENTO: " + datadenascimento[i] + "\n\n")
						}

			//para(inteiro i=0; i<=0; i++)

					se(opcao ==4){
						
						escreva("Digite o nome do Condômino: ")
						leia(nomes[i])
						escreva("\n" + "NOME: " + nomes[i])
						escreva("\n" + "CPF: " + CPF[i])
						escreva("\n"+ "DATA DE NASCIMENTO: " + datadenascimento[quantidadeCadastrada] + "\n\n") 
						}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */