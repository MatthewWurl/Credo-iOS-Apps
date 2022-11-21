//
//  VideoPlayerUtility.swift
//  Africa
//
//  Created by Matt X on 11/21/22.
//

import AVKit
import Foundation

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
    guard let videoURL = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        return nil
    }
    
    videoPlayer = AVPlayer(url: videoURL)
    videoPlayer?.play()
    
    return videoPlayer
}
