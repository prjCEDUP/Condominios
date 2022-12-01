programa
{
	//inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	
	funcao inicio(){
		cadeia nomes[99999], cpf[99999], dataNasc[99999], nome
		inteiro qtdCadastrada = 0, pesquisa = 0, opcao = 0, nencontrado=0

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
				nencontrado=0
				se(pesquisa <=qtdCadastrada e pesquisa>0){
					escreva("Codigo do morador "+nomes[pesquisa-1]," é: "+pesquisa+"\n")
					escreva("| CPF: "+cpf[pesquisa-1]," | Nascido em: "+dataNasc[pesquisa-1] +" |\n\n")
					nencontrado=+1
				}
				se(nencontrado!=1){
					escreva("Morador não cadastrado\n\n")
				}
			}

			se(opcao == 4){
				escreva("Digite um nome: ")
				leia(nome)
				limpa()
				nencontrado=0
				para (inteiro i = 0; i< qtdCadastrada; i++){
					se (nomes[i] == nome){
						escreva("Codigo do morador "+nome," é: "+(i+1)+"\n")
						escreva("| CPF: "+cpf[i]," | Nascido em: "+dataNasc[i] +" |\n\n")
						nencontrado=+1
					}
				}
				se(nencontrado!=1){
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
 * @POSICAO-CURSOR = 1964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */