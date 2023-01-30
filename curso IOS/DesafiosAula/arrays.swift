// let userNames:[String] = ["Victor", "Pedro", "Maria"]
// print (userNames)

var userNames:[String] = []
userNames.append("Victor")

userNames += ["Maria", "João"]

print (userNames)

print (userNames[2])

// fatiar (slice)
let firstThree = userNames[1...2]
print (firstThree)

// acessar novamente o array completo tem que criar um novo array
let firstThreee = Array(userNames[1...2])
print (firstThreee[0])

// adicionar elementos 
userNames.append("novo registro")
print(userNames)

// remover todos os elementos
userNames.removeAll()
print (userNames)

// funções de condições dos arrays

userNames.isEmpty // verificar lista vazia

userNames.count // verifica o tamanho da lista

userName.first // acessar o primeiro elemento

// caso o array esteja vazio é preciso fazer um IF

if let first = userNames.first {
  print (first)
}

// inserir no index X

userNames.insert("Aguiar", at: 0)

// remover no index X
 
userNames.remove(at: 0)

// caso queira armazenar a variavel excluida, para usar futuramente criar uma constate para isso.

let removed = userNames.remove(at: 0)
print (userNames)

// removendo o ultimo elemento
// troca por slice (fatia)

let removedLast = userNames.removeLast()

// fazendo a troca dos elementos dentro do array

userNames[0...1] = ["Novo1", "Novo2", "Novo3"]

// trocar por index

