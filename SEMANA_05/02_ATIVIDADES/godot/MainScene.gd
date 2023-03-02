extends Node2D

var teste = false
var valor = 0
var nome = "Felipe" # Variável criada para uso nos botões 1 e 3, com valor default caso o usuário aperto o botão 3 sem apertar o 1 antes
var numero = 0 # Variável pode ser local à função
var lista = [] # Instanciar variável (inserir var)

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	nome = $LineEdit.text # É necessário setar o nome além do número
	numero = int($LineEdit2.text) # Tirar acento do número e colocar $ na var de UI
	$Label.text = nome # O texto deve ser mostrado na Label


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i # Consertar nome da variável
		lista.append(numero) # Consertar nome da variável
	$Label.text = str(numero)


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
	print(lista)
	for num in lista:
		# Se for ímpar
		if(num % 2 != 0):
			nome += "baldo" # Concatenamos a string "baldo"
			$Label.text = nome # Não precisamos de uma 2a label então mudei para Label, mas uma outra boa solução seria criar a Label2
			break
