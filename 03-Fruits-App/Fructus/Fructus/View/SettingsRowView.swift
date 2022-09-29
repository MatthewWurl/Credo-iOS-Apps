//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Matt X on 4/8/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    let name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                if let content = content {
                    Text(content)
                } else {
                    EmptyView()
                }
                
                if let linkLabel = linkLabel,
                   let linkDestination = linkDestination {
                    Link(
                        linkLabel,
                        destination: URL(string: "https://\(linkDestination)")!
                    )
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingsRowView(name: "Developer",
                        linkLabel: "SwiftUI Masterclass",
                        linkDestination: "swiftuimasterclass.com")
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
}
