//
//  HomeView.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 30/06/21.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            // Main vstack
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    
                    
                    //Top menu
                    TopMenuView()
                        //.zIndex(0)
                    
                    
                    //TopView
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1.0)
                    
                    
                    //TableView
                    HomeStack(viewModel: viewModel, movieDetailToShow: $movieDetailToShow)
                }
            }
            
            
            if let movieToShow = self.movieDetailToShow {
                MovieDetail(movie: movieToShow, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
            
            
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}

struct HomeStack: View {
    var viewModel: HomeVM
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(viewModel.allCategories, id: \.self ) { category in
            
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                
                //Each row:
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        
                        ForEach(viewModel.getMovie(forCat: category)) { movie in
                            StandarHomeMovie(movie: movie)
                                .frame(width: 100, height: 200)
                                .padding(.horizontal, 20)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                        
                    }
                }
                
            }
            
        }
    }
}

enum HomeGenre: String {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriller
}

