// // loop FOR

// // sequencias (ranges)

// let range = 0...5 // inclusive
// let r = 0..<5 // exclusive

// var limit = 5
// let rg = 0..<limit

// // for é controlado pelo range 

// var sum = 0
// let count = 10

// for i in 1...count { // variavel imutavel (let)
//   sum += i
// }

// print (sum)

// // ignorar o index

// for _ in 1...count {
//   print("Oi")
// }

// // usamos o WHERE dentro de fors para criar condições

// for _ in 1 ... count where count > 50 {
//   print ("oi")
// }

//  // Opoerador modulo

// 5 % 2 // moduloé o resto da operação de divisão

//for i in 0...count where i % 2 === 0 {
//  print(i)
 //}

for i in 0...5 {
  print ("index é: \(i)")
}

for i in 0..<5 {
  print ("index é: \(i)")
}