//
//  AvatarCollectionViewCell.swift
//  instagramFeed
//
//  Created by Aluno08 on 23/01/23.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    static let identifier = "AvatarCell"
    
    let imgAvatar: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.backgroundColor = .blue
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75 / 2
        imageView.layer.borderWidth = 2.0
        imageView.layer.borderColor = UIColor.red.cgColor
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imgAvatar)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imgAvatar.frame = contentView.frame
    }
    
    func configureCell(imageName: String) {
        imgAvatar.image = UIImage(named: imageName)
    }
}
