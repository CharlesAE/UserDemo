//
//  UserCell.swift
//  UsersExtension
//
//  Created by CharlesAE on 10/13/18.
//  Copyright © 2018 LEO Technology. All rights reserved.
//

import UIKit

class UserCell: UICollectionViewCell {
    
    
    //Creating an ImageView, assigning it an image from the assets folder
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
    
    //Creating a label
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
        
        //Constraints with visual format
        //Label will fill the view from right to left with 1px of space on each side
        addConstraintsWithFormat("H:|-1-[v0]-1-|", views: userName)
        
        //If device is a phone
        if UIDevice().userInterfaceIdiom == .phone {
            //Image is given a max width of 52px, and will span the view from right to left
            addConstraintsWithFormat("H:|[v0(52@1000)]|", views: userImage)
            
            //Image is give na max height of 52 pixel, and will be placed above the label, label will have 2px of space underneath it
            addConstraintsWithFormat("V:|[v0(52@1000)]-2@1000-[v1]|", views: userImage, userName)
        }
            //If not an iphone
        else{
            //Image will fill the view horizontally
            addConstraintsWithFormat("H:|[v0]|", views: userImage)
            //Image will be placed above the label, label will have 2px of space underneath it
            addConstraintsWithFormat("V:|[v0]-2@1000-[v1]|", views: userImage, userName)
        }
        
    }
}
