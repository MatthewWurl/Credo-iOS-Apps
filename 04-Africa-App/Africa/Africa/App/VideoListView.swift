//
//  VideoListView.swift
//  Africa
//
//  Created by Matt X on 11/9/22.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    @State private var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(videos) { video in
                VideoListItemView(video: video)
                    .padding(.vertical, 8)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        videos.shuffle()
                        
                        hapticImpact.impactOccurred()
                    } label: {
                        Label(
                            "Shuffle",
                            systemImage: "arrow.2.squarepath"
                        )
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
