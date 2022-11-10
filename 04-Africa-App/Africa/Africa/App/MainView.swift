//
//  MainView.swift
//  Africa
//
//  Created by Matt X on 11/9/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2")
                }
            
            VideoListView()
                .tabItem {
                    Label("Watch", systemImage: "play.rectangle")
                }
            
            MapView()
                .tabItem {
                    Label("Locations", systemImage: "map")
                }
            
            GalleryView()
                .tabItem {
                    Label("Gallery", systemImage: "photo")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
