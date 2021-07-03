//
//  MoreLikeThis.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 01/07/21.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        //ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(movies) { movie in
                    StandarHomeMovie(movie: movie)
                }
            }
        //}
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies.suffix(6))
    }
}
