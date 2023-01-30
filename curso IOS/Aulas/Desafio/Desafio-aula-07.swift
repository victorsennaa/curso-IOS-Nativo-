//
//  Desafio-aula-07.swift
//  Desafio (iOS)
//
//  Created by Aluno08 on 26/09/22.
//

import Foundation

func soma (num1: Int?, num2: Int?) -> Int? {
    guard let num1 = num1,
          let num2 = num2
    else { return nil }
    return num1 + num2
    
}






// desafio 2


let arr = [10, 20, 30, 40, 50]

let filteredArr = arr.filter {($0 % 2) == 0}
print(filteredArr)

func fakeFilter(arr:[Int], _ contraint: (Int) -> Bool) -> [Int] {
    
}

