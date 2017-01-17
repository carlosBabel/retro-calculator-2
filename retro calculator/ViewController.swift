//
//  ViewController.swift
//  retro calculator
//
//  Created by Carlos on 17/1/17.
//  Copyright © 2017 Chichiri Games. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        //outputLbl.text = "0"    
    }
    
    @IBAction func numberPressed(sender: UIButton) {
        playSound()
        
        //runningNumber += "\(sender.tag)"
        //outputLbl.text = runningNumber
    }
    
    func playSound(){
        if btnSound.isPlaying {
            btnSound.stop()
        }
        btnSound.play()
    }
}

