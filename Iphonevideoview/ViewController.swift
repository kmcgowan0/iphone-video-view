//
//  ViewController.swift
//  airplaytest
//
//  Created by apple on 29/04/2016.
//  Copyright (c) 2016 katie mcgowan. All rights reserved.
//

import UIKit
import MediaPlayer
import YouTubePlayer



class ViewController: UIViewController {
    
    let videos = buildVideos()
    var selectedVideo = 0
    

    @IBAction func videoButton(sender: AnyObject) {
        selectedVideo = sender.tag!
        performSegueWithIdentifier("VideoDetail", sender: videos[sender.tag!])
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "VideoDetail" {
            let vc = segue.destinationViewController as! VideoView
            vc.video = videos[selectedVideo]
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}


