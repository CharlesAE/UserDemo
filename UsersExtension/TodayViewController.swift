//
//  TodayViewController.swift
//  UsersExtension
//
//  Created by CharlesAE on 10/13/18.
//  Copyright © 2018 LEO Technology. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, NCWidgetProviding {
    
    
    let userCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 1.0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .clear
        return cv
    }()
    
    let userID = "userID"
    var users: [UserModel]?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = userCollectionView.dequeueReusableCell(withReuseIdentifier: userID, for: indexPath) as! UserCell
        
        return cell
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        
        userCollectionView.dataSource = self
        userCollectionView.delegate = self
        view.addSubview(userCollectionView)
        
        userCollectionView.register(UserCell.self, forCellWithReuseIdentifier: userID)
        
        userCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        userCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        userCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        userCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width / 6.4, height: 80)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 3, 0, 0)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        completionHandler(NCUpdateResult.newData)
    }
}
