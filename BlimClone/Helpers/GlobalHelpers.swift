//
//  GlobalHelpers.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 30/06/21.
//

import Foundation
import SwiftUI

let exampleVideoURL1 = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
let exampleVideoURL2 = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!
let exampleVideoURL3 = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")!
var randomExampleVideoURL: URL {
    [exampleVideoURL1, exampleVideoURL2, exampleVideoURL3].randomElement() ?? exampleVideoURL1
}

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!
var randomExampleImageURL: URL {
    [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}


let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: randomExampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journery", videoURL: randomExampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "SThe Mysterious", videoURL: randomExampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]


let episode1 = Episode(name: "Some Episode", season: 1, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/110", desc: "Some description 1", length: 54, videoURL: randomExampleVideoURL)
let episode2 = Episode(name: "Some Episode", season: 1, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/111", desc: "Some description 2", length: 54, videoURL: randomExampleVideoURL)
let episode3 = Episode(name: "Some Episode", season: 1, episodeNumber: 3, thumbnailImageURLString: "https://picsum.photos/300/112", desc: "Some description 3", length: 54, videoURL: randomExampleVideoURL)
let episode4 = Episode(name: "Some Episode", season: 2, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/113", desc: "Some description 4", length: 54, videoURL: randomExampleVideoURL)
let episode5 = Episode(name: "Some Episode", season: 2, episodeNumber: 2, thumbnailImageURLString: "https://picsum.photos/300/114", desc: "Some description 5", length: 54, videoURL: randomExampleVideoURL)
let episode6 = Episode(name: "Some Episode", season: 3, episodeNumber: 1, thumbnailImageURLString: "https://picsum.photos/300/115", desc: "Some description 6", length: 54, videoURL: randomExampleVideoURL)
let allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


let episodeExampleInfo = CurrentEpisodeInfo(episodeName: "Some episode name", desc: "Some Description for this espisode", season: 1, episode: 1)


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
    episodes: allExampleEpisodes,
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Commnity",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    episodes: allExampleEpisodes,
    promotionHeadLine: "Best Rated Show",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    episodes: allExampleEpisodes,
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!, 
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    episodes: allExampleEpisodes,
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [exampleMovie6, exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    episodes: allExampleEpisodes,
    promotionHeadLine: "Watch Season 6 Now",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [exampleMovie7],
    trailers: exampleTrailers)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    cagetories: ["SomeCategory1", "SomeCategory2", "SomeCategory3"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 6,
    episodes: allExampleEpisodes,
    promotionHeadLine: "Watch Season 6 Now",
    defaultEpisodeInfo: episodeExampleInfo,
    creators: "JC Jobs, JC Musk",
    cast: "JC Torlads, JC Gates, JC Wozniak",
    moreLikeThisMovies: [],
    trailers: exampleTrailers)


var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()
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


extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
