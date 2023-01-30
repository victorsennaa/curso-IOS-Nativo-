//
//  ViewController.swift
//  AutoLayout
//
//  Created by Aluno08 on 24/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let blueView: UIView = {
        let view = UIView ()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


    func setupUI() {
        self.view.addSubview(blueView)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide, constant: 20),
            
            
        ])
    }
}

