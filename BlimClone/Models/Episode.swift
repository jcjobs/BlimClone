//
//  Episode.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 01/07/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var desc: String
    var lenght: Int
    
    var videoURL: URL
    
    var thumbnailImageURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
