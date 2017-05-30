//
//  FirstView.swift
//  gadasvlagadmosvlebi
//
//  Created by kote caava on 5/29/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

class FirstView: UIViewController {

    @IBAction func nextButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xSecondView") as? SecondView
        navigationController?.pushViewController(vc!, animated: true)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
