//
//  PostTableViewCell.swift
//  instagramFeed
//
//  Created by Aluno08 on 11/01/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
//        postImageView.sizeToFit()
    }
    
    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell",
                     bundle: nil)
    }

    func configure(with model: InstagramPost) {
        self.likesLabel.text = "\(model.numberOfLikes) Likes"
        self.usernameLabel.text = model.username
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImageName)
    }
    
}
