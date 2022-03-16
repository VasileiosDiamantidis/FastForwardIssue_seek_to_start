//
//  ViewController.swift
//  FastForwardIssue_seek_to_start
//
//  Created by Vasileios on 15.03.22.
//

import UIKit
import AVKit
import Foundation

class ViewController: UIViewController {
    
    let urlStr = "https://demo-hls7-live.zahs.tv/sd/master.m3u8?timeshift=3600"
    var player: AVPlayerViewController!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentPlayer()
    }

    private func presentPlayer() {
        player = AVPlayerViewController()
        
        player.player = AVPlayer(url: URL(string: urlStr)!)
        present(player, animated: true) {
            [weak self] in
            self?.player.player?.play()
        }
    }

}

