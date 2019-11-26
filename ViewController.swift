//
//  ViewController.swift
//  Doji123Apps
//
//  Created by Heni Prasetyorini on 11/11/19.
//  Copyright © 2019 heni. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    
    @IBAction func ButtonAction(_ sender: Any)
    {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
    {
        print(path)
        let video = AVPlayer(url: URL(fileURLWithPath: path))
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
        
        present(videoPlayer, animated: true, completion:
            {
                video.play()
            })
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func predictLabel() {
        
    }


}

