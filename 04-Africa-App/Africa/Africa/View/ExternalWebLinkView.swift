//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Matt X on 11/13/22.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    var destinationURL: URL {
        URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!
    }
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Label("Wikipedia", systemImage: "globe")
                Spacer()
                
                Group {
                    Link(destination: destinationURL) {
                        Label(animal.name, systemImage: "arrow.up.right.square")
                    }
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

// MARK: - PREVIEW
struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
