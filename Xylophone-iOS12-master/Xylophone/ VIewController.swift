//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    var selectedSoundFilename : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(soundFilename : String) {
        let soundUrl = Bundle.main.url(forResource: soundFilename, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFilename = soundArray[sender.tag - 1]
        
        playSound(soundFilename: selectedSoundFilename)

    }
    
  

}

