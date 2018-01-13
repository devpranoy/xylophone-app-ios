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
    var avAudio : AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        let selectedSound : String = soundArray[sender.tag-1]
       let soundUrl = Bundle.main.url(forResource : selectedSound, withExtension : "wav")
        do{
            avAudio = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        avAudio.play()
    }
}

