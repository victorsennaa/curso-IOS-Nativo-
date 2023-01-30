//
//  ViewController.swift
//  Stories
//
//  Created by Aluno08 on 25/01/23.
//

import UIKit

class StoriesCell: UITableViewCell {

    @IBOutlet weak var collection: UICollectionView!
    
    let stories: [String] = ["stories-1", "stories-2", "stories-3", "stories-4","stories-1", "stories-2", "stories-3", "stories-4","stories-1", "stories-2", "stories-3", "stories-4"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 75, height: 75)
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 16.0, bottom: 0.0, right: 16.0)
        
        //collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.setCollectionViewLayout(layout, animated: false)
        collection?.backgroundColor = .clear
        collection?.dataSource = self
        collection?.showsHorizontalScrollIndicator = false
        collection?.register(AvatarCell.self, forCellWithReuseIdentifier: AvatarCell.identifier)
    }
    
}


extension StoriesCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AvatarCell.identifier, for: indexPath) as! AvatarCell
        cell.configureCell(imageName: stories[indexPath.row])
        return cell
    }
    
    
}
