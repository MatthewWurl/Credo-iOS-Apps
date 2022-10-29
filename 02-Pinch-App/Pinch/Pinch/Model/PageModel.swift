//
//  PageModel.swift
//  Pinch
//
//  Created by Matt X on 10/29/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-\(imageName)"
    }
}
