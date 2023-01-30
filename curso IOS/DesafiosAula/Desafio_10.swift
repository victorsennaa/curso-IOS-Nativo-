// Desafio 10 - Segundos

var seconds: Int = 123

let hour: Int = seconds / (60 * 60)
seconds -= hour * (60 * 60)

let minutes: Int = seconds / 60
seconds -= minutes * 60

let hourStr = (hour < 10) ? "0\(hour)" : "\(hour)"
let MinutesStr = (minutes < 10) ? "0\(minutes)" : "\(minutes)"
let secondsStr = (seconds < 10) ? "0\(seconds)" : "\(seconds)"

print("\(hourStr):\(MinutesStr):\(secondsStr)")