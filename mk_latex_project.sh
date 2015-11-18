#!/bin/bash

# Verify config flag
if [ -z "$Config" ]
then
	echo "\t Não configurado";
	exit;
fi

echo -n "Qual o nome da Disciplina: "; 
read disc;

# In future can be implemented a database for disciplines

# echo -n "Qual o nome do projeto: ";
# read proj;

#echo "$disc"; exit

if [ -z "$disc" ]
then
	echo "Disciplina não especificada."
	exit;
fi

DIR=$(pwd)

echo "Criando Projeto em Latex"

mkdir -p "$DIR"/src

echo -n "Este projeto é de que tipo:
1) Relatórios
2) Trabalho
3) Projeto
4) Resumo
5) Documentação
6) Outros
--> ";
read x;

echo "Configurando Pasta de Imagens.";

Type=("$Report" "$Job" "Projeto" "$Abstract" "$Documentation");

Image="$Pictures/${Type[$(($x-1))]}/$disc"

#echo "$Image"; exit;

mkdir -p "$Image";

ln -srf -T "$Image" "$DIR"/fig;
cp $Template/Latex/main.tex "$DIR"/src
cp $Template/Latex/Makefile "$DIR"

echo -n "Este projeto é um
1) Livro,
2) Artigo,
3) Apresentação,
4)  ";
read x;








# Create link to reference






echo "Fim";

