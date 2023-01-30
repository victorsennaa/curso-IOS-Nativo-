//
//  ViewController.swift
//  CoreDataProj
//
//  Created by Aluno08 on 19/12/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = User(context: CoreDataStack.shared.context)
        user.name = "Victor"
        user.email = "victorsena@mail.com"
        user.password = "123456"
        
        
        let user2 = User(context: CoreDataStack.shared.context)
        user2.name = "Maria"
        user2.email = "Maria@mail2.com"
        user2.password = "654321"
        
        let user3 = User(context: CoreDataStack.shared.context)
        user3.name = "Rafael"
        user3.email = "Rafael@mail2.com"
        user3.password = "651254"
        //CoreDataStack.shared.context.delete(user)
        
        // NSFetchRequest
        // Chama na ordem ordenada
        /*let request = NSFetchRequest<User>(entityName: "User")
        let predicate1 = NSPredicate(format: "nem == %@", "victor")
        let predicate2 = NSPredicate(format: "password == %@", "654321")
        request.predicate = NSCompoundPredicate(andPredicateWithSubpredicates: [predicate1, predicate2])
        //request.predicate = NSPredicate(format: "name == %@", "Victor")
        request.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
        let result = (try?  CoreDataStack.shared.context.fetch(request)) ?? []
        for entity in result {
            print(entity.name)*/
            
        let request = NSFetchRequest<User>(entityName: "User")
        let predicate1 = NSPredicate(format: "email CONTAINS %@", "mail")
        let predicate2 = NSPredicate(format: "name CONTAINS [c]%@", "V")
        request.predicate = NSCompoundPredicate(andPredicateWithSubpredicates: [predicate1, predicate2])
        request.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
        let result = (try? CoreDataStack.shared.context.fetch(request)) ?? []
        for entity in result {
            print(entity.name)
            
        }
    
    /*func fetchUser(named: String) -> User? {
        let request = NSFetchRequest<User>(entityName: "User")
        request.predicate = NSPredicate(format: "name == %@", named)
        return try? CoreDataStack.shared.context.fetch(request).first
    */
    }
}
    
