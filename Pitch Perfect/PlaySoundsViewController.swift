//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by lolo-15 on 5/22/15.
//  Copyright (c) 2015 air4media. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer : AVAudioPlayer!
    var receivedAudio : RecordedAudio!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
//            var filePathURL = NSURL(fileURLWithPath: filePath)
//        }
//        else{
//            println("The filepath is empty. movie_quote ressource is missing in the project")
//        }
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StopSound(sender: UIButton) {
        audioPlayer.stop()
    }
    @IBAction func PlayFastSound(sender: UIButton) {
        audioPlayerFunction(2.0)
    }
    
    @IBAction func PlaySlowSound(sender: UIButton) {
       audioPlayerFunction(0.5)
    }
    func audioPlayerFunction(speed:Float){
        audioPlayer.stop()
        audioPlayer.rate = speed
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }

}
