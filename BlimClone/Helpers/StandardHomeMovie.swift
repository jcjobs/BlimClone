//
//  StandardHomeMovie.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 19/07/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        GeometryReader { proxy in
            KFImage(movie.thumbnailURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: proxy.size.width, height: proxy.size.height)
                .clipped()
        }
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            .frame(width: 100, height: 400)
    }
}
