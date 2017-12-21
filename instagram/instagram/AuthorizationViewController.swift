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
        let username = txtUserName.text
        let password = txtPassword.text
        
        let defaults = UserDefaults.standard
        defaults.set("User", forKey: "kuser")
        defaults.set("password", forKey: "kPass")

        
      //ეს ჭირდებოდა  let asd = asd ? asd : asd
        
        let exkUser = (UserDefaults.standard.value(forKey: "kuser")!) as! String
        
        let exPass = (UserDefaults.standard.value(forKey: "kPass")!) as! String

//
//        var UserTru = username == exkUser ? true : false
//        var  PasswordTru = password == exPass ? true : false

        if !txtPassword.text!.isEmpty || !txtPassword.text!.isEmpty {
            
            if exkUser == username || exPass == password {
                let vc = storyboard?.instantiateViewController(withIdentifier: "xxxmainView") as? TapClassView
                navigationController?.pushViewController(vc!, animated: false)                }

        } else {
        print("try again")
        }
        
        
//        if (txtPassword.text?.isEmpty)! {
//            print("empty user")
//        }else{
//            if (txtPassword.text?.isEmpty)! {
//                print("empty pass")
//            }else{
//                if stringUser == username || stringPassword == password {
//                    let vc = storyboard?.instantiateViewController(withIdentifier: "xxxmainView") as? TapClassBar
//                    navigationController?.pushViewController(vc!, animated: false)                }
//                } //end of else
//            }//txtpas end
        }//button end
        }//class end

    
  




