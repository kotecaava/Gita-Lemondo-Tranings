//
//  ViewController.swift
//  animate Images
//
//  Created by kote caava on 6/2/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var animatedCircle: UIButton!
    @IBAction func actionBUtton(_ sender: UIButton) {
        let lastX = self.view.frame.size.width - animatedCircle.frame.size.width
        let lastY = self.view.frame.size.height - animatedCircle.frame.size.height
        
        
        UIView.animate(withDuration: 0.5, animations: {
            self.animatedCircle.frame.origin.x = lastX
        }) { (_) in
            UIView.animate(withDuration: 0.5, animations: {
                self.animatedCircle.frame.origin.y = lastY

            }, completion: { (_) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.animatedCircle.frame.origin.x = lastX - lastX
                }, completion: { (_) in
                        UIView.animate(withDuration: 0.5, animations: { 
                            self.animatedCircle.frame.origin.y = lastY - lastY
                        }, completion: { (_) in
                           
                        })
                })
            })
        }
        
        
    }
    
}

