//
//  HomeVM.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 30/06/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map{ String($0) }
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Recent"] = exampleMovies.reversed()
        movies["Now watching"] = exampleMovies.shuffled()
        movies["Recomended"] = exampleMovies.reversed()
    }
    
}
