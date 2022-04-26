//
//  ContentView.swift
//  Restart
//
//  Created by Matt X on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some View {
        ZStack {
            if isOnboarding {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
