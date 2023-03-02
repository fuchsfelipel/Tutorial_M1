extends Node2D

var teste = false
var valor = 0
var nome = "Felipe" # Variável criada para uso nos botões 1 e 3, com valor default caso o usuário aperto o botão 3 sem apertar o 1 antes
# var numero = 0 # Variável pode ser local à função
var lista = [] # Instanciar variável (inserir var)

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#número = int(LineEdit.text) # Pelo o que entendi do exercício, há um erro de lógica. O Objetivo desta função é receber o nome do usuário
	nome = $LineEdit.text # Remover acento e adicionar cifrão para se referencia a uma variável da UI
	$Label.text = nome # Exibir nome na Label ao invés da caixa de texto


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	
	# Isso adiciona todos os números em range(10), queremos fazer o append do número à lista
	# for i in range(10):
	# 	numero += i # Nomes de variável são case-sensitive
	# 	lista.append(numero) # Nomes de variável são case-sensitive
	
	var numero = int($LineEdit.text) # Declarar a variável numero e adicionar cifrão para se referencia a uma variável da UI
	lista.append(numero) 
	$Label.text = str(lista) # Faz mais sentido mostrar todos os números do que apenas 1. Temos que fazer o casting de array para string


func _on_Button3_pressed():
	# Mudando o nome do usuário de acordo com os dados da lista
	# Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	# Faz mais sentido usar um for loop aqui
	# while(len(lista)):
	# 	cont=0
	# 	i=0
	# 	if(lista[i]%2==1):
	# 		cont+=1
	# 	if(cont!=0):
	# 		nome = nome+"baldo"
	# 	$Label2.text = nome
	
	for numero in lista:
		# Se for par
		if(numero % 2 != 0):
			nome += "baldo" # Concatenamos a string "baldo"
			$Label.text = nome # Não precisamos de uma 2a label então mudei para Label, mas uma outra boa solução seria criar a Label2
			break
