//
//  ViewController.swift
//  Persistência_UserDefaults
//
//  Created by Aluno08 on 12/12/22.
//

import UIKit

enum StoredKeys: String {
    case name
    case appearence
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let userDefaults = UserDefaults.standard
        userDefaults.set("Victor", forKey: StoredKeys.name.rawValue)
        userDefaults.set("Maria", forKey: "name")
        
        // userDefaults.set(nil, forKey: "name") -> Apaga o conteúdo da "name"
        // userDefaults.removeObject(forKey: "name") -> apagar também
        print (userDefaults.string(forKey: "name"))

    }
}

