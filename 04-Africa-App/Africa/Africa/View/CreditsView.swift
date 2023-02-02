//
//  CreditsView.swift
//  Africa
//
//  Created by Matt X on 2/2/23.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    let copyright = """
                    Copyright © Matt Wurl
                    All rights reserved.
                    Better Apps ♡ Less Code
                    """
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text(copyright)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

// MARK: - PREVIEW
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
