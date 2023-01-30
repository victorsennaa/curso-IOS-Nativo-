// Desafio 2 - Collections

let a = [0, 1, 2, 3 , 4, 4]
let s = Set(a)
print(s)

let d = [
  "Victor": 26,
  "Maria": 23,
]

let names = Array(d.keys)
let ages = Array(d.values)

print(names)
print(ages)

let b = [10, 20, 30]
print(a + b) // juntou o conteúdo dos dois Arrays

let c = Array(a[1..<3])

print(c, type(of: c))