//
//  ContentView.swift
//  Fructus
//
//  Created by Matt X on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings = false
    
    let fruits = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
                NavigationLink {
                    FruitDetailView(fruit: fruit)
                } label: {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
