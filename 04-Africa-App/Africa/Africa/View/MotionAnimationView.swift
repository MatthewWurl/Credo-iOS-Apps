//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Matt X on 11/25/22.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { number in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                            , value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                }
            }
            .drawingGroup()
        }
    }
    
    // MARK: - FUNCTIONS
    // 1. Random Coordinate
    func randomCoordinate(max: CGFloat) -> CGFloat {
        let range = 0...max
        return CGFloat.random(in: range)
    }
    
    // 2. Random Size
    func randomSize() -> CGFloat {
        let range = 10...300
        return CGFloat(Int.random(in: range))
    }
    
    // 3. Random Scale
    func randomScale() -> CGFloat {
        let range = 0.1...2.0
        return CGFloat(Double.random(in: range))
    }
    
    // 4. Random Speed
    func randomSpeed() -> Double {
        let range = 0.025...1.0
        return Double.random(in: range)
    }
    
    // 5. Random Delay
    func randomDelay() -> Double {
        let range = 0.0...2.0
        return Double.random(in: range)
    }
}

// MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
