//
//  MainScreen.swift
//  firstapp
//
//  Created by kote caava on 5/24/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
// !!unwrapi
// gamotanili doubles shemotana
// pliusze ar unda waishalos

import UIKit

fileprivate class MainScreen: UIViewController {
    
    //show calculated number
    
    @IBOutlet weak var showCalculated: UILabel!
    // MARK: - Properties
        var isFirstD = true
        var calculatedNumOne = 0.0
        var arithmetic = 0
    
    //AC Button
    @IBAction func btnACtapped(_ sender: UIButton) {
        showCalculated.text = ""
        print("")
    }
    //Number Button bool +, number ++
    @IBAction func btnNumber(_ sender: UIButton) {
        showCalculated.text = isFirstD ? "\(sender.tag)" : showCalculated.text! + "\(sender.tag)"
        isFirstD = false
        
    }
    //Math Actions *+-%/+- if
    @IBAction func mathACtion(_ sender: UIButton) {
        arithmetic = sender.tag
        if !showCalculated.text!.isEmpty {
            
        arithmetic = sender.tag
        calculatedNumOne = Double (showCalculated.text!)!
        showCalculated.text = ""
        } else {
        print("not selected numbers")
        }
    }
    //equity === if and fun
    @IBAction func itEquals(_ sender: UIButton) {
        if !showCalculated.text!.isEmpty {
            let number = getCalculatedValue(arith: arithmetic, num1: calculatedNumOne, num2: Double(showCalculated.text!)!)
            
            showCalculated.text = "\(number)"
            } else {
            print("not selected numbers")
        }
        
    }
    fileprivate func getCalculatedValue (arith: Int, num1: Double, num2: Double) -> Double {
        
        switch arith {
        case 2:
            return num1 + num2
        case 3:
            return num1 - num2
        case 4:
            return num1 * num2
        case 5:
            return num1 / num2
        case 6:
            return (num1 * num2)/100
        case 7:
            return (num1 * num2)/100
            
            
        default:
            break
        }
        return 0.0
    
    }

}
