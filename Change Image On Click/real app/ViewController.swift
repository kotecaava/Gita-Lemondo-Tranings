//
//  ViewController.swift
//  real app
//
//  Created by kote caava on 5/27/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mountImage: UIImageView!
    
    @IBAction func changeButton(_ sender: UIButton) {
        let image = UIImage(named: "1")
        let imageTwo = UIImage(named: "2" )
        
        if mountImage.image == image {
            mountImage.image = imageTwo
        }else{
            mountImage.image = image
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

