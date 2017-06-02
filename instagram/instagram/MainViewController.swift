//
//  MainViewController.swift
//  instagram
//
//  Created by kote caava on 5/30/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

 class MainViewController: UIViewController {

    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var tableViewCell: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var dataObject = [User]()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchInformation()
    }
    
    func fetchInformation () {
        for i in 1..<10 {
            let object = User()
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

// MARK: - UITableViewDelegate & UITableViewDataSource
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
