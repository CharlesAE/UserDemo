//
//  UserCell.swift
//  UsersExtension
//
//  Created by CharlesAE on 10/13/18.
//  Copyright © 2018 LEO Technology. All rights reserved.
//

import UIKit

class UserCell: UICollectionViewCell {
    
    let userImage: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .clear
        iv.contentMode = .scaleAspectFit
        iv.image = #imageLiteral(resourceName: "user")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 4
        iv.clipsToBounds = true
        return iv
    }()
    
    let userName: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 10.5)
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func layoutCell() {
        
        backgroundColor = .clear
        layer.masksToBounds = true
        
        addSubview(userImage)
        addSubview(userName)
        
        addConstraintsWithFormat("H:|-1-[v0]-1-|", views: userName)
        
        if UIDevice().userInterfaceIdiom == .phone {
            addConstraintsWithFormat("H:|[v0(52@1000)]|", views: userImage)
            addConstraintsWithFormat("V:|[v0(52@1000)]-2@1000-[v1]|", views: userImage, userName)
        }
        else{
            addConstraintsWithFormat("H:|[v0]|", views: userImage)
            addConstraintsWithFormat("V:|[v0]-2@1000-[v1]|", views: userImage, userName)
        }
        
    }
}
