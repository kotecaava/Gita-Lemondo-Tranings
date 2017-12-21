//
//  ViewController.swift
//  readWithW
//
//  Created by kote caava on 8/23/17.
//  Copyright © 2017 konstantine tsaava. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    var voices = ["g","a","m","a","r","j","o","b","a"]
 //   let ext = "m4a"
    
    @IBOutlet weak var textinputlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func inputText(_ sender: UITextField) {
        let ext = "m4a"

//        var dickpic = 0...self.voices.count-1
//        for audio in dickpic{
//            let ext = "m4a"
//            
//            var audioChanged = self.voices[audio]
//            print(audioChanged)
//            
////            let when = DispatchTime.now() + 5 // change 2 to desired number of seconds
////            DispatchQueue.main.asyncAfter(deadline: when) {
////                
////            }// end of time slowing
//            
//            if audio == dickpic {
//                let when = DispatchTime.now() + 0.5 // change 2 to desired number of seconds
//                DispatchQueue.main.asyncAfter(deadline: when) {
//                    
//                
//                //sound play
//                if let soundUrl = Bundle.main.url(forResource: audioChanged, withExtension: ext) {
//                    var soundId: SystemSoundID = 0
//                    
//                    AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
//                    
//                    AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
//                        AudioServicesDisposeSystemSoundID(soundId)
//                    }, nil)
//                    
//                    AudioServicesPlaySystemSound(soundId)
//                }// end of plaing
//            }// end of time slowing
//        }// end of for
//    }//end of action inserted text
        
        
                        // sound play
                        if let soundUrl = Bundle.main.url(forResource: voices[6], withExtension: ext) {
                            var soundId: SystemSoundID = 0
        
                            AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
        
                            AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
                                AudioServicesDisposeSystemSoundID(soundId)
                            }, nil)
        
                            AudioServicesPlaySystemSound(soundId)
                        }// end of plaing
        
        
                    let when = DispatchTime.now() + 0.15 // change 2 to desired number of seconds
                    DispatchQueue.main.asyncAfter(deadline: when) {
                        // sound play
                        if let soundUrl = Bundle.main.url(forResource: self.voices[1], withExtension: ext) {
                            var soundId: SystemSoundID = 0
                            
                            AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
                            
                            AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
                                AudioServicesDisposeSystemSoundID(soundId)
                            }, nil)
                            
                            AudioServicesPlaySystemSound(soundId)
                        }// end of plaing
        }// end of slowing time
        
        let whenn = DispatchTime.now() + 0.3 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: whenn) {
            // sound play
            if let soundUrl = Bundle.main.url(forResource: self.voices[2], withExtension: ext) {
                var soundId: SystemSoundID = 0
                
                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
                
                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
                    AudioServicesDisposeSystemSoundID(soundId)
                }, nil)
                
                AudioServicesPlaySystemSound(soundId)
            }// end of plaing
        }// end of slowing time
        
        
        
        let whennn = DispatchTime.now() + 0.45 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: whennn) {
            // sound play
            if let soundUrl = Bundle.main.url(forResource: self.voices[6], withExtension: ext) {
                var soundId: SystemSoundID = 0
                
                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
                
                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
                    AudioServicesDisposeSystemSoundID(soundId)
                }, nil)
                
                AudioServicesPlaySystemSound(soundId)
            }// end of plaing
        }// end of slowing time
        
        
//        
//        let whennnn = DispatchTime.now() + 0.6 // change 2 to desired number of seconds
//        DispatchQueue.main.asyncAfter(deadline: whennnn) {
//            // sound play
//            if let soundUrl = Bundle.main.url(forResource: self.voices[4], withExtension: ext) {
//                var soundId: SystemSoundID = 0
//                
//                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
//                
//                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
//                    AudioServicesDisposeSystemSoundID(soundId)
//                }, nil)
//                
//                AudioServicesPlaySystemSound(soundId)
//            }// end of plaing
//        }// end of slowing time
//        
//        
//        let wheB = DispatchTime.now() + 0.75 // change 2 to desired number of seconds
//        DispatchQueue.main.asyncAfter(deadline: wheB) {
//            // sound play
//            if let soundUrl = Bundle.main.url(forResource: self.voices[5], withExtension: ext) {
//                var soundId: SystemSoundID = 0
//                
//                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
//                
//                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
//                    AudioServicesDisposeSystemSoundID(soundId)
//                }, nil)
//                
//                AudioServicesPlaySystemSound(soundId)
//            }// end of plaing
//        }// end of slowing time
//        
//        
//        
//        let whee = DispatchTime.now() + 0.9 // change 2 to desired number of seconds
//        DispatchQueue.main.asyncAfter(deadline: whee) {
//            // sound play
//            if let soundUrl = Bundle.main.url(forResource: self.voices[6], withExtension: ext) {
//                var soundId: SystemSoundID = 0
//                
//                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
//                
//                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
//                    AudioServicesDisposeSystemSoundID(soundId)
//                }, nil)
//                
//                AudioServicesPlaySystemSound(soundId)
//            }// end of plaing
//        }// end of slowing time
//        
//        
//        
//        
//        let whennnnnnn = DispatchTime.now() + 1.05 // change 2 to desired number of seconds
//        DispatchQueue.main.asyncAfter(deadline: whennnnnnn) {
//            // sound play
//            if let soundUrl = Bundle.main.url(forResource: self.voices[7], withExtension: ext) {
//                var soundId: SystemSoundID = 0
//                
//                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
//                
//                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
//                    AudioServicesDisposeSystemSoundID(soundId)
//                }, nil)
//                
//                AudioServicesPlaySystemSound(soundId)
//            }// end of plaing
//        }// end of slowing time
//        
//        
//        
//        let whea = DispatchTime.now() + 1.2 // change 2 to desired number of seconds
//        DispatchQueue.main.asyncAfter(deadline: whea) {
//            // sound play
//            if let soundUrl = Bundle.main.url(forResource: self.voices[8], withExtension: ext) {
//                var soundId: SystemSoundID = 0
//                
//                AudioServicesCreateSystemSoundID(soundUrl as CFURL, &soundId)
//                
//                AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
//                    AudioServicesDisposeSystemSoundID(soundId)
//                }, nil)
//                
//                AudioServicesPlaySystemSound(soundId)
//            }// end of plaing
//        }// end of slowing time
        
        
      
//        //main text
//        let tex = textinputlet.text
//        //take last letter
//        var textLast = (tex?.characters.last!.j)
//        print(textLast)
// 
//        //convert charecter to string
//        let arr: [Any] = [textLast!]
//        let str = arr.flatMap { $0 as? String }.joined()
//        print(str)
//
//        print(str) // example
//
//        var StringToOptional = str.characters.last
//        print(type(of: StringToOptional))

//        //convert charecter to string
//        let bigga: [Any] = [StringToOptional]
//        let straa = bigga.flatMap { $0 as? String }.joined()
//        print(bigga) // example
        
    

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

