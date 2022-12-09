//
//  EpisodesView.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 02/07/21.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonsPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter{$0.season == season}
    }
    
    var body: some View {
        VStack(spacing: 14) {
            //Season picker
            HStack {
                Button(action: {
                    print("Selected season")
                    showSeasonsPicker = true
                }, label: {
                    Group{
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }.font(.system(size: 16))
                    
                })
                
                Spacer()
            }
            
            
            //Episode list
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    
                    HStack {
                        VideoPreviewImage(videoURL: episode.videoURL, imageURL: episode.thumbnailImageURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                        
                    }
                    
                    Text(episode.desc)
                        .font(.system(size: 13))
                        .lineLimit(3)
                    
                }.padding(.bottom, 20)
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            EpisodesView(episodes: allExampleEpisodes, showSeasonsPicker: .constant(false), selectedSeason: .constant(1))
        }
        
    }
}
