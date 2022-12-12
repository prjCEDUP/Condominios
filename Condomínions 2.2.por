programa
{
	inclua biblioteca Util --> u
	
	funcao inicio(){

		  login()
		  diretor()
	}

	funcao login(){
		cadeia senha="", user = ""
		
		enquanto (user != "Diretor" ou senha != "****"){
				
			escreva("Informe seu usuário: ")
			leia(user)
			escreva("Informe sua senha: ")
			leia(senha)
			limpa()
				se (user != "Diretor" ou senha != "****" ){
					limpa()
					escreva("Usuário ou senha incorretos, tente novamente.\n")
					u.aguarde(1500)
					limpa()
				}
					
		}escreva("Bem-vindo "+ user+"!\n\n")
		 u.aguarde(800)
	}

	funcao diretor(){
		cadeia nomes[99999], nomesF[99999], dataNasc[99999], cargo[99999], nome, nomeF,
		cpf[99999], dataNascF[99999], cpfF[99999]
		inteiro qtdCadastrada = 0, pesquisa = 0, opcao = 0, nEncontrado=0, opcao1=0, qtdCadastradaF=0, opcaoF=0, pesquisaF=0
		
		enquanto (opcao1 != 3){
			opcao=0
			opcaoF=0
						
			escreva("------------- Condomínions/CEDUP -------------")
			escreva("\n----------------- 2022 INFO -----------------")
			escreva("\n(1) - Moradores.")
			escreva("\n(2) - Funcionários.")
			escreva("\n\n(3) - Sair")
			escreva("\n---------------------------------------------")
			escreva("\nDigite uma opção: ")
			leia(opcao1)
			limpa()

			se(opcao1>3 ou opcao1<1){
				escreva("Opção inválida!\n\n")
				u.aguarde(1000)
				limpa()
			}
			se(opcao1==1){
			
				enquanto (opcao != 5){
				
					escreva("------------- Programa do CEDUP -------------")
					escreva("\n----------------- 2022 INFO -----------------")
					escreva("\n(1) - Cadastrar morador.")
					escreva("\n(2) - Listar todos moradores.")
					escreva("\n(3) - Buscar um morador por código(índice).")
					escreva("\n(4) - Buscar um morador por nome.")
					escreva("\n\n(5) - Voltar")
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
						se(qtdCadastrada == 0){
						escreva("Nenhum morador localizado")
						}
						escreva("\n")
					}

					se(opcao == 3){
						escreva("Digite o código do morador: ")
						leia(pesquisa)
						nEncontrado=0
						se(pesquisa <=qtdCadastrada e pesquisa>0){
							escreva("código "+pesquisa,"\nMorador: "+nomes[pesquisa-1])
							escreva("\nCPF: "+cpf[pesquisa-1],"\nData de Nascimento: "+dataNasc[pesquisa-1] +"\n\n")
							nEncontrado=+1
						}
						se(nEncontrado!=1){
						escreva("Morador não cadastrado.\n\n")
						}
				
					}

					se(opcao == 4){
						escreva("Digite um nome: ")
						leia(nome)
						limpa()
						nEncontrado=0
							para (inteiro i = 0; i< qtdCadastrada; i++){
								se (nomes[i] == nome){
									escreva("Morador "+ nome,"\ncódigo: "+(i+1)+"\n")
									escreva("CPF: "+cpf[i],"\nData de Nascimento: "+dataNasc[i] +"\n\n")
									nEncontrado=+1
								}
							}
						se(nEncontrado!=1){
						escreva("Morador não cadastrado.\n\n")
						}
					}	
				}
			}	
			
			se(opcao1==2){
				enquanto (opcaoF!= 5){
					escreva("------------- Programa do CEDUP -------------")
					escreva("\n----------------- 2022 INFO -----------------")
					escreva("\n(1) - Cadastrar Funcionário.")
					escreva("\n(2) - Listar todos Funcinários.")
					escreva("\n(3) - Buscar um Funcionário por código(índice).")
					escreva("\n(4) - Buscar um Funcionário por nome.")
					escreva("\n\n(5) - Voltar")
					escreva("\n---------------------------------------------")
					escreva("\nDigite uma opção: ")
					leia(opcaoF)
					limpa()

					se(opcaoF>5 ou opcaoF<1){
						escreva("Opção inválida!\n\n")
						u.aguarde(1000)
						limpa()
					}
					opcao1=0

					se (opcaoF == 1){
						escreva("Digite o nome do Funcionário: ")
						leia(nomesF[qtdCadastradaF])
				
						escreva("Digite o CPF: ")
						leia(cpfF[qtdCadastradaF])

						escreva("Digite a data de nascimento: ")
						leia(dataNascF[qtdCadastradaF])
					
						escreva("Digite o cargo do funcionário: ")
						leia(cargo[qtdCadastradaF])
				
						escreva(" Funcinário cadstrado com sucesso!\n\n")
						u.aguarde(1000)
						limpa()
				
						qtdCadastradaF++
					}

					se(opcaoF == 2){
						para (inteiro i = 0; i< qtdCadastradaF; i++){
							escreva((i+1)+": ",nomesF[i]+"\n")
						}
						se(qtdCadastradaF == 0){
							escreva("Nenhum funcionário localizado")
						}
						escreva("\n")
					}
					
					se(opcaoF == 3){
						escreva("Digite o código do Funcionário: ")
						leia(pesquisaF)
						nEncontrado=0
						se(pesquisaF <=qtdCadastradaF e pesquisaF>0){
							escreva("código "+pesquisaF,"\nMorador: "+nomesF[pesquisaF-1])
							escreva("\nCPF: "+cpfF[pesquisaF-1],"\nData de Nascimento: "+dataNascF[pesquisaF-1]+"\nCargo:"+cargo[pesquisaF-1] +"\n\n")
							nEncontrado=+1
						}
						se(nEncontrado!=1){
						escreva("Funcionário não cadastrado.\n\n")
						}
					}

					se(opcaoF == 4){
						escreva("Digite um nome: ")
						leia(nomeF)
						limpa()
						nEncontrado=0
						para (inteiro i = 0; i< qtdCadastradaF; i++){
							se (nomesF[i] == nomeF){
								escreva("Funcionário "+ nomeF,"\ncódigo: "+(i+1)+"\n")
								escreva("CPF: "+cpfF[i],"\nData de Nascimento: "+dataNascF[i] +"\nCargo: "+cargo[i]+"\n\n")
								nEncontrado=+1
							}
						}
						se(nEncontrado!=1){
							escreva("Funcionário não cadastrado.\n\n")
						}
					}	
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
 * @POSICAO-CURSOR = 2492; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */