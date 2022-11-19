//
//  VideoModel.swift
//  Africa
//
//  Created by Matt X on 11/19/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
