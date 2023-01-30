/*func login (username: String, password: String){
  let encryptedData = ["username": username, "password": password].encrypt()
  return Network.shared.autehenticate(data: encryptedData)
}

if login(username: Victor, password: 1234) {
  print("Usuário autorizado")
} else {
  print("Usuário não autorizado")
} */

func multiply (_ number: Int, multiplier: Int = 2) -> Int {
  return number * multiplier
}

multiply(10)