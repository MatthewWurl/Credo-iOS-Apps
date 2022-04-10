//
//  OnboardingView.swift
//  Fructus
//
//  Created by Matt X on 4/6/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    let fruits = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
