//
//  MovieDetail.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 01/07/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonsPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            movieDetailToShow = nil
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .font(.system(size: 28))
                        })
                        
                    }.padding(.horizontal, 22)
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            StandarHomeMovie(movie: movie)
                                .frame(width: screen.width / 2.5)
                            
                            MovieInfoBottom(movie: movie)
                            
                            //Text("Watch Season 3 Now")
                            if let promotionHeadLine = movie.promotionHeadLine {
                                Text(promotionHeadLine)
                                    .font(.headline)
                                    .bold()
                            }
                            
                            
                            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                                
                            }
                            
                            
                            CurrentEpisodeInfo(movie: movie)
                            
                            
                            CastInfo(movie: movie)
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                                    
                                }
                                
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: false) {
                                    
                                }
                                
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: false) {
                                    
                                }
                                
                                Spacer()
                            }.padding(.leading, 20)
                            
                            
                            //Scrollable tab picker:
                            CustomTabSwitcher(movie: movie, tabs: [.episodes, .trailers, .more], showSeasonsPicker: $showSeasonsPicker, selectedSeason: $selectedSeason)
                            
                            
                        }.padding(.horizontal, 10)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                
                if showSeasonsPicker {
                    Group {
                        Color.black.opacity(0.9)
                        
                        VStack(spacing: 40) {
                            Spacer()
                            
                            ForEach(0..<movie.numberOfSeasons!) { season in
                                Button(action: {
                                    self.selectedSeason = season+1
                                    self.showSeasonsPicker = false
                                }, label: {
                                    Text("Season \(season+1)")
                                        .foregroundColor(selectedSeason == season+1 ? .white : .gray)
                                        .bold()
                                })
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                self.showSeasonsPicker = false
                            }, label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            })
                            .padding(.bottom, 30)
                        }
                    }.edgesIgnoringSafeArea(.all)
                }
                
                
            }
            
            
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1, movieDetailToShow: .constant(nil))
    }
}



struct MovieInfoBottom: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}


struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }.frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                
                Spacer()
            }
        }.font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInfo: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                
                Spacer()
            }.padding(.vertical, 4)
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}
