//
//  StandarHomeMovie.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 30/06/21.
//

import SwiftUI
import Kingfisher

struct StandarHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL).resizable().scaledToFill()
    }
}

struct StandarHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandarHomeMovie(movie: exampleMovie1).frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
