programa
{
	//inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	
	funcao inicio(){
		cadeia nomes[99999], cpf[99999], dataNasc[99999], nome
		inteiro qtdCadastrada = 0, pesquisa = 0, opcao = 0, nEncontrado=0

		enquanto (opcao != 5){
			escreva("------------- Programa do CEDUP -------------")
			escreva("\n----------------- 2022 INFO -----------------")
			escreva("\n(1) - Cadastrar morador.")
			escreva("\n(2) - Listar todos moradores.")
			escreva("\n(3) - Buscar um morador por codigo(índice).")
			escreva("\n(4) - Buscar um morador por nome.")
			escreva("\n\n(5) - Sair")
			escreva("\n---------------------------------------------")
			escreva("\nDigite uma opção: ")
			leia(opcao)
			limpa()

			se(opcao>5 ou opcao<1){
				escreva("Opção inválida!\n\n")
				u.aguarde(1000)
				limpa()
			}

			se (opcao == 1){
				escreva("Digite o nome do morador: ")
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
					escreva((i+1)+": ",nomes[i]+"\n")
				}
				escreva("\n")
			}

			se(opcao == 3){
				escreva("Digite o codigo do morador: ")
				leia(pesquisa)
				nEncontrado=0
				se(pesquisa <=qtdCadastrada e pesquisa>0){
					escreva("O Codigo "+pesquisa," é do morador: "+nomes[pesquisa-1]+"\n")
					escreva("| CPF: "+cpf[pesquisa-1]," | Nascido em: "+dataNasc[pesquisa-1] +" |\n\n")
					nEncontrado=+1
				}
				se(nEncontrado!=1){
					escreva("Morador não cadastrado\n\n")
				}
			}

			se(opcao == 4){
				escreva("Digite um nome: ")
				leia(nome)
				limpa()
				nEncontrado=0
				para (inteiro i = 0; i< qtdCadastrada; i++){
					se (nomes[i] == nome){
						escreva("O morador "+ nome," tem o codigo: "+(i+1)+"\n")
						escreva("| CPF: "+cpf[i]," | Nascido em: "+dataNasc[i] +" |\n\n")
						nEncontrado=+1
					}
				}
				se(nEncontrado!=1){
					escreva("Morador não cadastrado\n\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */