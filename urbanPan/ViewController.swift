//
//  ViewController.swift
//  urbanPan
//
//  Created by URBANSMASH pro on 29/08/2019.
//  Copyright © 2019 Play it on Pan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player : AVAudioPlayer!
    
    let sounds = ["Rest", "FN03", "FS03"]
    var soundFileName = "FN03"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        soundFileName = sounds[sender.tag]
//        player.currentTime = 0
        playSound()

    }
    
    func playSound() {
        
        let url = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        do {

            player = try AVAudioPlayer(contentsOf: url!)
            print(url!)
            player.play()
        }
        catch {
            print(error)
        }

    }
    
    
}




