programa
{
	inclua biblioteca Calendario --> c
	inclua biblioteca Util --> u
	
	funcao inicio(){

		  login()
		  diretor()
	}

	funcao login(){
		cadeia senha="", user = ""
		
		enquanto (user != "Diretor" e senha != "1234"){
				
			escreva("Informe seu usuario: ")
			leia(user)
			escreva("Informe sua senha: ")
			leia(senha)
			limpa()
				se (user != "Diretor" e senha != "1234" ){
					limpa()
					escreva("Usuario ou senha incoretos, tente novamente.\n")
					u.aguarde(1500)
					limpa()
				}
					
		}escreva("Bem vindo "+ user+"!\n\n")
		 u.aguarde(800)
	}

	funcao diretor(){
		cadeia nomes[99999], dataNasc[99999], nome,nomef,nomesf[99999],cargo[99999]
		inteiro qtdCadastrada = 0, pesquisa = 0, opcao = 0, nEncontrado=0, opcao1=0,qtdCadastradaf=0,opcaof=0,pesquisaf=0
		inteiro cpf[99999],dataNascf[99999],cpff[99999]
		
		enquanto (opcao1 != 3){
			opcao=0
			opcaof=0
			
			escreva("------------- Programa do CEDUP -------------")
			escreva("\n----------------- 2022 INFO -----------------")
			escreva("\n(1) - Moradores.")
			escreva("\n(2) - Funcionarios.")
			escreva("\n(3) - Sair")
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
					escreva("\n(3) - Buscar um morador por codigo(índice).")
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
					escreva("\n")
					}

					se(opcao == 3){
						escreva("Digite o codigo do morador: ")
						leia(pesquisa)
						nEncontrado=0
						se(pesquisa <=qtdCadastrada e pesquisa>0){
							escreva("Codigo "+pesquisa,"\nMorador: "+nomes[pesquisa-1])
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
									escreva("Morador "+ nome,"\nCodigo: "+(i+1)+"\n")
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
				enquanto (opcaof!= 5){
					escreva("------------- Programa do CEDUP -------------")
					escreva("\n----------------- 2022 INFO -----------------")
					escreva("\n(1) - Cadastrar funcionario.")
					escreva("\n(2) - Listar todos Funcinarios.")
					escreva("\n(3) - Buscar um Funcionario por codigo(índice).")
					escreva("\n(4) - Buscar um Funcinario por nome.")
					escreva("\n\n(5) - Voltar")
					escreva("\n---------------------------------------------")
					escreva("\nDigite uma opção: ")
					leia(opcaof)
					limpa()

					se(opcaof>5 ou opcaof<1){
						escreva("Opção inválida!\n\n")
						u.aguarde(1000)
						limpa()
					}
					opcao1=0

					se (opcaof == 1){
						escreva("Digite o nome do Funcionario: ")
						leia(nomesf[qtdCadastradaf])
				
						escreva("Digite o CPF: ")
						leia(cpff[qtdCadastradaf])

						escreva("Digite a data de nascimento: ")
						leia(dataNascf[qtdCadastradaf])
					
						escreva("Digite o cargo do funcionario: ")
						leia(cargo[qtdCadastradaf])
				
						escreva(" Funcinario cadstrado com sucesso!\n\n")
						u.aguarde(1000)
						limpa()
				
						qtdCadastradaf++
					}

					se(opcaof == 2){
						para (inteiro i = 0; i< qtdCadastradaf; i++){
							escreva((i+1)+": ",nomesf[i]+"\n")
						}
						escreva("\n")
					}
					
					se(opcaof == 3){
						escreva("Digite o codigo do Funcionario: ")
						leia(pesquisaf)
						nEncontrado=0
						se(pesquisaf <=qtdCadastradaf e pesquisaf>0){
							escreva("Codigo "+pesquisaf,"\nMorador: "+nomesf[pesquisa-1])
							escreva("\nCPF: "+cpff[pesquisaf-1],"\nData de Nascimento: "+dataNascf[pesquisaf-1]+"\ncargo:"+cargo[pesquisaf-1] +"\n\n")
							nEncontrado=+1
						}
						se(nEncontrado!=1){
						escreva("Funcionario não cadastrado.\n\n")
						}
					}

					se(opcaof == 4){
						escreva("Digite um nome: ")
						leia(nomef)
						limpa()
						nEncontrado=0
						para (inteiro i = 0; i< qtdCadastradaf; i++){
							se (nomesf[i] == nomef){
								escreva("funcionario "+ nomef,"\nCodigo: "+(i+1)+"\n")
								escreva("CPF: "+cpff[i],"\nData de Nascimento: "+dataNascf[i] +"\nCargo: "+cargo[i]+"\n\n")
								nEncontrado=+1
							}
						}
						se(nEncontrado!=1){
							escreva("Funcionario não cadastrado.\n\n")
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
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */