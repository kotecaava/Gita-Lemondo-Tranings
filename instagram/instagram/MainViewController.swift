//
//  MainViewController.swift
//  instagram
//
//  Created by kote caava on 5/30/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit
import firebase


class MainViewController: UIViewController {
    
    
    let rootref = fir

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var dataObject = [User]()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        



        fetchInformation()
    }

    func fetchInformation () {
        for i in 1..<10 {
            var object = User()
            object.avatar = UIImage(named: "avatar_\(i)")
            object.picture = UIImage(named: "picture_\(i)")
            
            object.name = "MilaJovovicOfficial_\(i)"
            object.views = "\(i) views"
            object.upload = "\(i) days ago"
            
            dataObject.append(object)
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

        }
}

    // MARK: - UITableViewDelegate & UITableViewDataSource * Here we describe what will be send back to tableView
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "xxxTableViewCell", for: indexPath) as? TableViewCell else {
            fatalError("Could not dequeue cell with identifier xxxTableViewCell")
        }
        
        let object = dataObject[indexPath.row]
        print(object)
        
        // Data Assign
        
        cell.avatar.image = object.avatar
        cell.picture.image = object.picture
        cell.name.text = object.name
        cell.uploadDate.text = object.upload
        cell.views.text = object.views
        
        // Make Circle Avatar
        cell.avatar.layer.cornerRadius = cell.avatar.frame.size.width/2.0
        cell.avatar.layer.masksToBounds = true
        
        // Make Border Outline
        cell.avatar.layer.borderColor = UIColor.lightGray.cgColor
        cell.avatar.layer.borderWidth = 1.0
        
        return cell
    }
    
}

//    extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource  {
//    
//    ////////////////////
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return dataObject.count
//        
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let coll = collectionView.dequeueReusableCell(withReuseIdentifier: "xxximagestory", for: indexPath) as? ImageStory else {
//            fatalError("Could not dequeue cell with identifier xxxTableViewCell")
//        }
//        let object = dataObject[indexPath.row]
//        print(object)
//        
//        return coll
    // end of guard
// extension end


// MARK: - UICollectionViewDelegate & UICollectionViewDataSource
//extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return self.dataObject.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: xxxNewsFeedCollCell, for: indexPath) as? NewsCollCell else {
//            fatalError("Could not dequeue cell with identifier xxxNewsFeedCollCell")
//        }
//        
//        let object = self.dataObject[indexPath.item]
//        
//        // assign avatar
//        let url = URL(string: object.picture) // cast string to url
//        cell.avatar.sd_setImage(with: url)
//        cell.userName.text = object.userName
//        
//        return cell
//    }
//}

