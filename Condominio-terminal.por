programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		cadeia nomes[99999], cpf[99999] 
		inteiro opcao = 0, posicao = 0
		inteiro qtdCadastrada = 0, pesquisa = 0
		caracter nome

		enquanto (opcao != 5) 
		{
			escreva("------------- Programa do CEDUP -------------")
			escreva("\n---------------- 2022 INFO ----------------")
			escreva("\n1 - Cadastrar condomino")
			escreva("\n2 - Listar todos condominos")
			escreva("\n3 - Buscar um condomino por codigo(índice)")
			escreva("\n4 - Buscar um condomino por nome")
			escreva("\n\n5 - Sair")
			escreva("\n---------------------")
			escreva("\nDigite uma opção: ")
			leia(opcao)
			limpa()

			se (opcao == 1)
			{
				limpa()
				escreva("Digite um nome da pessoa " + (qtdCadastrada+1) +": ")
				leia(nomes[qtdCadastrada])
				
				escreva("Digite o CPF " + (qtdCadastrada+1) +": ")
				leia(cpf[qtdCadastrada])
				
				escreva("Condominio cadastrado com sucesso!\n\n")
				u.aguarde(900)

				qtdCadastrada++
				
			}

			senao se(opcao == 2)
			{
				para (inteiro i=0; i<qtdCadastrada; i++)
				{
					escreva(posicao+" ", nomes[i], "CPF: "+cpf[i]+"\n")
					
				}
			}

			senao se(opcao == 3)
			{
				escreva("Digite um codigo: ")
				leia(pesquisa)

				escreva(nomes[pesquisa] + "\n\n")
				u.aguarde(900)
			}
			
			senao se(opcao == 4)
			{
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
 * @POSICAO-CURSOR = 959; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */