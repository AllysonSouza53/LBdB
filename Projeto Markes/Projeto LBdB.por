programa
{
	inclua biblioteca Texto
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		inteiro Banco = CriarBancoDeDados("TesteNum1")
		UsarBanco("TesteNum1",Banco)
		CriarTabela("Alunos", Banco)
		InserirCampo("id int not null auto_increment,",Banco)
		InserirCampo("idade int(3) not null,",Banco)
		ChavePrimaria("id", Banco)
		FecharTabela(Banco)
	}

	funcao inteiro CriarBancoDeDados(cadeia nome)
	{
		inteiro caminhobanco = a.abrir_arquivo("D:\\Allyson\\Projeto Markes\\Banco.sql", a.MODO_ESCRITA)
		a.escrever_linha("CREATE DATABASE "+nome+";", caminhobanco)
		retorne caminhobanco
	}

	funcao UsarBanco(cadeia nome, inteiro caminhobanco)
	{
		a.escrever_linha("USE "+nome+";", caminhobanco)
	}

	funcao CriarTabela(cadeia nome, inteiro caminhobanco)
	{
		a.escrever_linha("CREATE TABLE "+nome+"(", caminhobanco)
	}

	funcao InserirCampo(cadeia campo, inteiro caminhobanco)
	{
		a.escrever_linha(campo, caminhobanco)
	}

	funcao FecharTabela(inteiro caminhobanco)
	{
		a.escrever_linha(");", caminhobanco)
	}

	funcao ChavePrimaria(cadeia nome, inteiro caminhobanco)
	{
		a.escrever_linha("PRIMARY KEY ("+nome+")", caminhobanco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */