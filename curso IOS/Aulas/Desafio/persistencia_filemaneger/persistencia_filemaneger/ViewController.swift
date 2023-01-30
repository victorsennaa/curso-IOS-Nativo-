//
//  ViewController.swift
//  persistencia_filemaneger
//
//  Created by Aluno08 on 14/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let name = "Victor"
        let data = name.data(using: .utf8)
        
        let helper = FileHelper ()
        print (helper.create(named: "teste.txt", with: data))
        
        /*guard let data = helper.read(name: "teste.txt")
        else { return }
        print(String(data: data, encoding: .utf8))
        
        let name2 = "Sena"
        let data2 = name2.data(using: .utf8)
        helper.update(named: "teste.txt", with: data2)
        
        guard let data3 = helper.read(name: "teste.txt")
        else { return }
        print(String(data: data3, encoding: .utf8))*/
        
        print(helper.delete(named: "teste.txt"))
        
        guard let data = helper.read(name: "teste.txt")
        else {
            print("deletou!")
            return
        }
        print(String(data: data, encoding: .utf8))
    }


}

