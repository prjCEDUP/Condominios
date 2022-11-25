programa
{
	//inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	
	funcao inicio(){
		cadeia nomes[99999]
		inteiro qtdCadastrada = 0, pesquisa = 0, opcao = 0, posicao = 0
		inteiro cpf[99999], dataNasc[9999] 
		caracter nome

		enquanto (opcao != 5){
			escreva("------------- Programa do CEDUP -------------")
			escreva("\n----------------- 2022 INFO -----------------")
			escreva("\n1 - Cadastrar morador.")
			escreva("\n2 - Listar todos moradores.")
			escreva("\n3 - Buscar um morador por codigo(índice).")
			escreva("\n4 - Buscar um morador por nome.")
			escreva("\n\n5 - Sair")
			escreva("\n---------------------------------------------")
			escreva("\nDigite uma opção: ")
			leia(opcao)
			limpa()

			se (opcao == 1){
				escreva("Digite um nome da pessoa " + (qtdCadastrada+1) + ": ")
				leia(nomes[qtdCadastrada])
				
				escreva("Digite o CPF: ")
				leia(cpf[qtdCadastrada])

				escreva("Digite a data de nascimento: ")
				leia(dataNasc[qtdCadastrada])
				
				escreva("Morador cadastrado com sucesso!\n\n")
				u.aguarde(1000)
				limpa()
				
				qtdCadastrada++
			}

			se(opcao == 2){
				para (inteiro i = 0; i< qtdCadastrada; i++){
					escreva(i+": ",nomes[i], " CPF: "+cpf[i],"Nascido em: "+dataNasc[i] +"\n")
					posicao -= i 
				}
				u.aguarde(900)
			}

			se(opcao == 3){
				escreva("Digite o codigo do morador: ")
				leia(pesquisa)

				escreva(nomes[pesquisa] + "\n\n")
			}
			
			se(opcao == 4){
				escreva("Digite um nome: ")
				leia(nome)

				escreva("O codigo é: "+posicao+ "\n\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */