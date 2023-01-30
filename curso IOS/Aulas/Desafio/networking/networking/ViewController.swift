//
//  ViewController.swift
//  networking
//
//  Created by Aluno08 on 02/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*var components = URLComponents()
        components.scheme = "https"
        components.host = "jsonplaceholder.typicode.com"
        components.path = "posts"
        components.queryItems = [
            URLQueryItem(name: "param1", value: "123"),
            URLQueryItem(name: "param2", value: "456")
        ]
        let url = components.url */
        
        
        // Do any additional setup after loading the view.
        let session = URLSession.shared
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) { data, response, error in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            
            let decoder = JSONDecoder()
            guard let data = data,
                  let response = response,
                  let post = try? decoder.decode(Post.self, from: data) else { return }
            
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
            DispatchQueue.main.async {
                self.textView.text = post.title
                
            }
            
        }
        
        task.resume()
    }
}
    
    struct Post: Decodable {
        let userId: Int
        let identifier: Int
        let title: String
        let body: String
        
        enum CodingKeys: String, CodingKey {
            case userId
            case identifier = "id"
            case title
            case body
        }
}
