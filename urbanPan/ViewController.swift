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
    
    let sounds = ["Rest", "2-F3", "2-FS3", "2-G3", "2-GS3", "2-A3", "2-AS3", "2-B3", "2-C4", "2-CS4", "2-D4", "2-DS4", "2-E4", "2-F4", "2-FS4", "2-G4", "2-GS4", "2-A4", "2-AS4", "2-B4", "2-C5", "2-CS5", "2-D5", "2-DS5", "2-E5", "2-F5", "2-FS5", "2-G5", "2-GS5", "2-A5", "2-AS5", "2-B5", "2-C6"]
    
    var soundFileName = "2-F3"
    
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




