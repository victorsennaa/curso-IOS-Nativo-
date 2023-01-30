//
//  ViewController.swift
//  instagramFeed
//
//  Created by Aluno08 on 11/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    
    var models = [InstagramPost]()
    
    let stories: [String] = ["stories-1", "stories-2", "stories-3", "stories-4","stories-1", "stories-2", "stories-3", "stories-4","stories-1", "stories-2", "stories-3", "stories-4"]
    
        
    var collection: UICollectionView?
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        models.append(InstagramPost(numberOfLikes: 200,
                                    username: "SennaGames",
                                    userImageName: "head",
                                    postImageName: "post_1"))
        
        models.append(InstagramPost(numberOfLikes: 210,
                                    username: "SennaGames",
                                    userImageName: "head",
                                    postImageName: "post_2"))
        
        models.append(InstagramPost(numberOfLikes: 100,
                                    username: "SennaGames",
                                    userImageName: "head",
                                    postImageName: "post_3"))
        
        models.append(InstagramPost(numberOfLikes: 100,
                                    username: "SennaGames",
                                    userImageName: "head",
                                    postImageName: "post_4"))
        // RElacionado ao Story
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 75, height: 75)
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 16.0, bottom: 0.0, right: 16.0)
        
        collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection?.backgroundColor = .clear
        collection?.dataSource = self
        collection?.showsHorizontalScrollIndicator = false
        collection?.register(AvatarCell.self, forCellWithReuseIdentifier: AvatarCell.identifier)
        
        guard let myCollection = collection else { return }
        
        table.tableHeaderView = myCollection
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collection?.frame = CGRect(x:0, y:100, width: view.frame.size.width, height: 75)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier,
                                                       for: indexPath) as? PostTableViewCell
        else {
            return UITableViewCell()
        }

        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}


struct InstagramPost {
    let numberOfLikes: Int
    let username: String
    let userImageName: String
    let postImageName: String
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AvatarCell.identifier, for: indexPath) as! AvatarCell
        cell.configureCell(imageName: stories[indexPath.row])
        return cell
    }
    
}
