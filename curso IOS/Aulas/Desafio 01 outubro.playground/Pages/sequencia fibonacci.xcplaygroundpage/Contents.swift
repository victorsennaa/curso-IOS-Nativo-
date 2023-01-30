//: [Previous](@previous)

import Foundation

func fibo (number: Int) -> Int{
    
    var num1 = 0
    var num2 = 1
    
    for _ in 0..<number { //seria de 0 até o número desejado
        
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    
    return (num2)
}

print (fibo(number: 10))

