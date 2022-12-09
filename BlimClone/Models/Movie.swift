//
//  Movie.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 30/06/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var cagetories: [String]
    
    //Detail
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episodes: [Episode]?
    
    var promotionHeadLine: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "Season 1"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
    
    //Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"

        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.desc
        } else {
            return defaultEpisodeInfo.desc
        }
    }
    
    
    var moreLikeThisMovies: [Movie]
    
    
    var trailers: [Trailer]
}


struct  CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var desc: String
    var season: Int
    var episode: Int
}
