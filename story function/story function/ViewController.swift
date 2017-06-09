//
//  ViewController.swift
//  story function
//
//  Created by kote caava on 6/2/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {




} //End Of Controller Class
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
