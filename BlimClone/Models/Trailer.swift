//
//  Trailer.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 02/07/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
