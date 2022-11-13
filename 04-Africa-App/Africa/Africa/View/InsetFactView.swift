//
//  InsetFactView.swift
//  Africa
//
//  Created by Matt X on 11/13/22.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

// MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
