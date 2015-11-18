#!/bin/bash

echo "Criador de tarefas."
echo -n "Deseja adicionar uma nova tarefa [y/n]: ";
read option;

if [ -n "${#Task[@]}" ]
then
case "$option" in
	y) echo "Sim";
	   echo -n "Qual o nome dela: "
	   read task;
	   Tasks=( ${Tasks[@]} "$task"); 
	   export Tasks;
		;;
	n) echo "Não"
		;;
esac

else
	Tasks="";
	export Tasks;
fi
echo "Fim"
