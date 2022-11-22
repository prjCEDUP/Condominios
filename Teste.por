programa
{
	inclua biblioteca Mouse --> m
	inclua biblioteca Sons --> s
	inclua biblioteca Graficos --> g
	inclua biblioteca Calendario--> c
	
	const inteiro larguraT = 800 //Tamanho constante da largura da tela
	const inteiro alturaT = 600 //Tamnanho constante da altura da tela
	inteiro horaH = c.hora_atual(falso) //Exibe as horas no normato 24h
	inteiro horaM = c.minuto_atual() //Exibe os minutos
	inteiro som = s.carregar_som("C:\\Users\\Eliel\\Documents\\GitHub\\CEDUP\\DEAF KEV - Invincible [NCS Release].mp3") //Carrega um som local para memoria

	//Desenha tela e declara funções criadas posteriormente
	funcao inicio()
	{
		desenhaTela()
		enquanto(verdadeiro)
		{
			desenharTexto()
			corFundo()
			botao()
		}
	}
	
	//Desenha uma tela
	funcao desenhaTela()
	{
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Condominios")
		g.definir_dimensoes_janela(larguraT, alturaT)
	}
	
	//Atribui uma cor de fundo
	funcao corFundo()
	{
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}
	
	//Desenha um texto na tela
	funcao desenharTexto()
	{
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(20.0)
		g.desenhar_texto(710, 550, horaH+":"+horaM)
		g.renderizar()
	}
	
	//Desenha botão e atribui uma função/açâo
	funcao botao()
	{
		// Botão de Play
		g.definir_cor(g.criar_cor(135,206,230))
		g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(145, 330, "PLAY")
		se(mouse(115,315,90, 35) ==  verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO))
		{
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, falso)
			g.definir_tamanho_texto(20.0)
			g.desenhar_texto(100, 200, "Continua a musica!")
			s.reproduzir_som(som, falso)
		}

		//Botão de Parar
		g.definir_cor(g.criar_cor(135,206,230))
		g.desenhar_retangulo(420, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(445, 330, "Stop")
		se(mouse(415,315,90, 35) ==  verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO))
		{
			g.definir_cor(g.COR_PRETO)
			g.desenhar_retangulo(420, 320, 90, 35, verdadeiro, falso)
			g.definir_tamanho_texto(20.0)
			g.desenhar_texto(400, 200, "Para a musica!")
			s.interromper_som(som)
		}
		
	}
	
	//Detectar onde mouse está
	funcao logico mouse(inteiro x,inteiro y, inteiro a, inteiro b)
	{
		se(m.posicao_x() >= x e m.posicao_y() >= y e m.posicao_x() <= x+a e m.posicao_y() <= y+b)
		{
			retorne verdadeiro
		}	
		retorne falso
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 437; 
 * @DOBRAMENTO-CODIGO = [14, 26, 34, 41, 50, 85];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */