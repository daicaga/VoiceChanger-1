//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Cameron on 1/8/15.
//  Copyright (c) 2015 Cameron. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer : AVAudioPlayer! = nil
    var receivedAudio:RecordedAudio!
    var audioEngine:AVAudioEngine!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            var filePathURL = NSURL.fileURLWithPath(filePath)
//            audioPlayer = AVAudioPlayer(contentsOfURL: filePathURL, error: nil)
//            audioPlayer.enableRate = true
//        } else {
//            println("Error file does not exist")
//        }
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
        // Do any additional setup after loading the view.
    }
    func playAudio() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    @IBAction func snailButtonAction(sender: AnyObject) {
        //audioPlayer.stop()
        audioPlayer.rate = 0.5
        playAudio()
        //audioPlayer.currentTime = 0.0 //to play from beginning
        //audioPlayer.play()
    }
    @IBAction func rabbitButtonAction(sender: AnyObject) {
        //audioPlayer.stop()
        audioPlayer.rate = 1.5
        playAudio()
        //audioPlayer.currentTime = 0.0 //to play from beginning
        //audioPlayer.play()
    }
    
    @IBAction func chipmunkButtonAction(sender: AnyObject) {
        
    }
    @IBAction func stopButtonAction(sender: AnyObject) {
        audioPlayer.stop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
