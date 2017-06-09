//
//  AuthorizationViewController.swift
//  instagram
//
//  Created by kote caava on 6/3/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
   
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
   
    @IBAction func signUpTapped(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsignup") as? SignUp
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func loginONtapped(_ sender: UIButton) {
        var username = txtUserName.text
        var password = txtPassword.text
        
        let defaults = UserDefaults.standard
        defaults.set("user", forKey: "kuser")
        defaults.set("password", forKey: "kPass")

        var exkUser = (UserDefaults.standard.value(forKey: "kuser")!)
        let stringUser = String(describing: exkUser)
        
        var exPass = (UserDefaults.standard.value(forKey: "kuser")!)
        let stringPassword = String(describing: exPass)


//        var UserTru = username? == defaultUser ? true : false
//        var  PasswordTru = password? == defaultPassword ? true : false

        if (txtPassword.text?.isEmpty)! {
            print("empty user")
        }else{
            if (txtPassword.text?.isEmpty)! {
                print("empty pass")
            }else{
                if stringUser == username || stringPassword == password {
                    let vc = storyboard?.instantiateViewController(withIdentifier: "xxxmainView") as? TapClassBar
                    navigationController?.pushViewController(vc!, animated: false)                }
                } //end of else
            }//txtpas end
        }//button end
        }//class end

    
  




