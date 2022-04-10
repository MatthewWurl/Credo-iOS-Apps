//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Matt X on 4/8/22.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    let labelText: String
    let labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
