//
//  SignUp.swift
//  instagram
//
//  Created by kote caava on 6/5/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

class SignUp: UIViewController {

    @IBOutlet weak var passWordTxT: UITextField!
    @IBOutlet weak var userNameTxT: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var username = ""
    var password = ""
    @IBAction func signSaveTapped(_ sender: UIButton) {
//        username = userNameTxT.text!
//        password = passWordTxT.text!
//        UserDefaults.standard.set(username, forKey: "user")
//        UserDefaults.standard.set(password, forKey: "password")
        navigationController?.popViewController(animated: true)
   
        

    }

    @IBAction func backOnTaooed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxauthorization") as? AuthorizationViewController
        navigationController?.pushViewController(vc!, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
