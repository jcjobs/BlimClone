//
//  TopMoviePreview.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 01/07/21.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.cagetories.count
        
        if let index = movie.cagetories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.cagetories, id: \.self) { category in
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 5))
                            }
                            
                        }
                        
                    }
                }
                
                //Text("Row of buttons")
                HStack {
                    Spacer()
                    
                    //Text("My list")
                    SmallVerticalButton(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //TODO: Action
                    }
                    
                    Spacer()
                    
                    //Text("Play button")
                    PlayButton(text: "Play", imageName: "play.fill") {
                        //TODO: Action
                    }.frame(width: 120)
                    
                    Spacer()
                    
                    //Text("Info button")
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //TODO: acActiontion
                    }
                    
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient.padding(.top, 250)
            )
            
        }.foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
