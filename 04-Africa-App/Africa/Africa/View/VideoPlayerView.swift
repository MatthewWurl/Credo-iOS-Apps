//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Matt X on 11/21/22.
//

import AVKit
import SwiftUI

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    let videoSelected: String
    let videoTitle: String
    
    var player: AVPlayer? {
        return playVideo(fileName: videoSelected, fileFormat: "mp4")
    }
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 8)
                    , alignment: .topLeading
                )
        }
        .tint(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
