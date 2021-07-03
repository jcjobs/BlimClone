//
//  GlobalHelpers.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 30/06/21.
//

import Foundation
import SwiftUI

//let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleVideoURL = URL(string: "https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!
var randomExampleImageURL: URL {
    [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}


let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journery", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "SThe Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]


let episode1 = Episode(name: "Some Name1", season: 1, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/110", desc: "Some description 1", lenght: 54, videoURL: exampleVideoURL)
let episode2 = Episode(name: "Some Name2", season: 1, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/111", desc: "Some description 2", lenght: 54, videoURL: exampleVideoURL)
let episode3 = Episode(name: "Some Name3", season: 1, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/300/112", desc: "Some description 3", lenght: 54, videoURL: exampleVideoURL)
let episode4 = Episode(name: "Some Name1", season: 2, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/113", desc: "Some description 4", lenght: 54, videoURL: exampleVideoURL)
let episode5 = Episode(name: "Some Name2", season: 2, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/114", desc: "Some description 5", lenght: 54, videoURL: exampleVideoURL)
let episode6 = Episode(name: "Some Name3", season: 3, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/115", desc: "Some description 6", lenght: 54, videoURL: exampleVideoURL)
let allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


let episodeExampleInfo = CurrrentEpisodeInfo(episodeName: "Some name", desc: "Some Description for this espisode", season: 1, episode: 1)


let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    episodes: allExampleEpisodes,
    promotionHeadLine: "New Episodes Comming Soon",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Commnity",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    promotionHeadLine: "Best Rated Show",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!, 
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    promotionHeadLine: "Watch Season 6 Now",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    promotionHeadLine: "Watch Season 6 Now",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)


var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom
    )
}

extension String {
    func widthForString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
