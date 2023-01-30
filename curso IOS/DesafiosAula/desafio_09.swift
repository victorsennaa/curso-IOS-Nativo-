// Desafio 09 - Datas

let hoje = Date()
let formatter = DateFormatter()
formatter.dateFormat = "dd 'de MMMM 'de' yyyy"
formatter.locale = Locale(identifier: "pt_BR")

print(formatter.string(from: hoje))