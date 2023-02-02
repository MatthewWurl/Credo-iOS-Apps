//
//  CenterModifier.swift
//  Africa
//
//  Created by Matt X on 2/2/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            
            content
            
            Spacer()
        }
    }
}
