//
//  CustomTabSwitcher.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 01/07/21.
//

import SwiftUI

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    
    var movie: Movie
    var tabs: [CustomTab]
    
    @Binding var showSeasonsPicker: Bool
    @Binding var selectedSeason: Int
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthForString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            //Custom tab picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //Red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            }).buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                            
                        }
                    }
                }
            }
            
            //Selected view
            switch currentTab {
                case .episodes:
                    EpisodesView(episodes: movie.episodes ?? [], showSeasonsPicker: $showSeasonsPicker, selectedSeason: $selectedSeason)
                case .trailers:
                    TrailerList(trailers: movie.trailers)
                case .more:
                    MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
            
        }.foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(movie: exampleMovie1, tabs: [.episodes, .trailers, .more], showSeasonsPicker: .constant(false), selectedSeason: .constant(1))
        }
        
    }
}
