// Desafio 07 - Números Primos

let number = 7
var isPrime = false

for n in 2..<number {
  isPrime = (number % n != 0)
  if !isPrime {
      break
  }
}

if isPrime {
  print ("É um número primo.")
} else {
  print("Não é número primo")
}